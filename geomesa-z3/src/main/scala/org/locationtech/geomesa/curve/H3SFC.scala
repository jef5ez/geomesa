/***********************************************************************
 * Copyright (c) 2013-2020 Commonwealth Computer Research, Inc.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Apache License, Version 2.0
 * which accompanies this distribution and is available at
 * http://www.opensource.org/licenses/apache2.0.php.
 ***********************************************************************/

package org.locationtech.geomesa.curve

import com.uber.h3core.H3Core
import com.uber.h3core.util.GeoCoord
import org.locationtech.sfcurve.IndexRange

/**
  * H3 space-filling curve
  */
class H3SFC(maxResolution: Int = 11) extends SpaceFillingCurve {

  import H3SFC._

  override def index(x: Double, y: Double, lenient: Boolean): Long = {
    if (lenient) {
      val bx = if (x < LonMin) { LonMin } else if (x > LonMax) { LonMax } else { x }
      val by = if (y < LatMin) { LatMin } else if (y > LatMax) { LatMax } else { y }
      H3.geoToH3(by, bx, maxValidResolution)
    } else {
      require(x >= LonMin && x <= LonMax && y >= LatMin && y <= LatMax,
        s"Value(s) out of bounds ([$LonMin,$LonMax], [$LatMin,$LatMax]): $x, $y")
      H3.geoToH3(y, x, maxValidResolution)
    }
  }

  override def ranges(
      xy: Seq[(Double, Double, Double, Double)],
      precision: Int,
      maxRanges: Option[Int]): Seq[IndexRange] = {
    import H3Index._

    xy.flatMap( tup => {
      val (bl, tl, tr, br) = bboxToCoords.tupled(tup)
      toCoveringCells(maxResolution, bl, tl, tr, br).map(c => c.toIndexRange)
    }).map{ case (min, max) => IndexRange(min, max, contained = true) }
  }

  override def invert(i: Long): (Double, Double) = {
    val latLon = H3.h3ToGeo(i)
    (latLon.lng, latLon.lat)
  }
}


object H3SFC {

  private val LonMin: Double = -180d
  private val LonMax: Double = 180d
  private val LatMin: Double = -90d
  private val LatMax: Double = 90d

  val H3: H3Core = H3Core.newInstance()
  val maxValidResolution = 15

  val bboxToCoords = (xmin: Double, ymin: Double, xmax: Double, ymax: Double) => {
    val bl = new GeoCoord(ymin, xmin)
    val tl = new GeoCoord(ymax, xmin)
    val tr = new GeoCoord(ymax, xmax)
    val br = new GeoCoord(ymin, xmax)
    (bl, tl, tr, br)
  }

  def toCoveringCells(maxResolution: Int, bl: GeoCoord, tl: GeoCoord, tr: GeoCoord, br: GeoCoord): Set[Long] = {
    import H3Index._
    val poly = Seq(bl, tl, tr, br, bl)
    val corners: Set[Long] = poly.map(coord => coord.toH3Index(maxResolution)).toSet
    if (corners.size == 1) {
      corners
    } else {
      val edges = poly.zip(poly.tail).toSet
      var containedCells = Set[Long]()
      var intersectingCells = Set[Long]()
      var externalCells = Set[Long]()
      var curRes = maxResolution
      var center: Long = (bl + ((bl - tr) * 0.5)).toH3Index(curRes)
      var toSearch: Set[Long] = null
      if (center.boundaryIntersectsLines(edges)) {
        intersectingCells += center
        toSearch = Set(center)
      } else {
        while (containedCells.isEmpty && curRes > 0) {
          curRes -= 1
          val parent = center.parent(curRes)
          if (parent.boundaryIntersectsLines(edges)) {
            containedCells += center
          } else {
            center = parent
          }
        }
        toSearch = center.hexRing().toSet
      }
      while (toSearch.nonEmpty) {
        val (iCells, cCells) = toSearch.partition(n => n.boundaryIntersectsLines(edges))
        val (valid, external) = iCells.flatMap(i => {
          i.hexRing().toSet.diff(toSearch)
        }).partition(c => c.boundaryIntersectsLines(edges) || c.toPoint.bboxIntersect(bl, tr))
        intersectingCells ++= iCells
        containedCells ++= cCells
        externalCells ++= external
        val nextHop = cCells.flatMap(_.hexRing()).diff(intersectingCells).diff(containedCells).diff(externalCells)
        toSearch = nextHop ++ valid
      }
      //todo could shrink the intersecting cells, currently bad for big boxes that just barely touch a cell
      containedCells ++ intersectingCells
    }
  }

  type Segment = (GeoCoord, GeoCoord)

  implicit class GeoCoordOps(val c: GeoCoord) extends AnyVal {
    def x: Double = c.lng
    def y: Double = c.lat

    def toH3Index(res: Int): Long = H3.geoToH3(c.lat, c.lng, res)

    def -(d: GeoCoord): GeoCoord = new GeoCoord(c.y - d.y, c.x - d.x)

    def +(d: GeoCoord): GeoCoord = new GeoCoord(c.x + d.x, c.y - d.y)

    def *(d: Double): GeoCoord = new GeoCoord(c.x * d, c.y * d)

    def dot(d: GeoCoord): Double = c.x * d.x + c.y * d.y
    def perp(d: GeoCoord): Double = c.x * d.y - c.y * d.x

    def distanceSquared(d: GeoCoord): Double = {
      val x = d.x - c.x
      val y = d.y - c.y
      x * x + y * y
    }

    def bboxIntersect(bl: GeoCoord, tr: GeoCoord): Boolean = {
      c.lat >= bl.lat && c.lng >= bl.lng && c.lat <= tr.lat && c.lng <= tr.lng
    }

  }

  implicit class SegmentUtilOps(val s0: Segment) extends AnyVal {

    def cross(c: GeoCoord): Double =
      (c.x - s0._1.x) * (s0._2.y - s0._1.y) - (c.y - s0._1.y) * (s0._2.x - s0._1.x)

    def delta: GeoCoord = s0._2 - s0._1

    // confusing name, mirrors naming in JTS
    def equalsExact(s1: Segment, t: Double = 1e-6): Boolean = {
      Math.abs(s0._1.x - s1._1.x) < t &&
        Math.abs(s0._1.y - s1._1.y) < t &&
        Math.abs(s0._2.x - s1._2.x) < t &&
        Math.abs(s0._2.y - s1._2.y) < t
    }

    /**
     * Single point intersection
     * adapted from http://paulbourke.net/geometry/pointlineplane/
     * @param s1 other segment
     * @return None when no intersection, Some(intersect) otherwise, intersect is midpoint of smaller line if coincident
     */
    def intersection(s1: Segment) : Option[GeoCoord] = {
      val s0dx = s0._2.x - s0._1.x
      val s0dy = s0._2.y - s0._1.y
      val s1dx = s1._2.x - s1._1.x
      val s1dy = s1._2.y - s1._1.y
      val sd1x = s0._1.x - s1._1.x
      val sd1y = s0._1.y - s1._1.y

      val d = s1dy * s0dx - s1dx * s0dy
      lazy val n_a = s1dx * sd1y - s1dy * sd1x
      lazy val n_b = s0dx * sd1y - s0dy * sd1x
      if (d == 0) {// means lines are parallel
        if (math.abs(n_a) < 1e-8 && math.abs(n_b) < 1e-8) { // coincident
          val d0 = s0.delta
          val d1 = s1.delta
          val n0 = math.abs(d0.lat) + math.abs(d0.lng)
          val n1 = math.abs(d1.lat) + math.abs(d1.lng)
          val smallerMidP =
            if (n1 > n0) s0._2 + (d0 * 0.5)
            else s1._2 + (d1 * 0.5)
          Some(smallerMidP)
        } else None
      } else {
        val ua = n_a / d
        val ub = n_b / d

        if (ua >= 0d && ua <= 1d && ub >= 0d && ub <= 1d) {
          val ix = s0._1.x + (ua * s0dx)
          val iy = s0._1.y + (ua * s0dy)
          Some(new GeoCoord(iy, ix))
        } else {
          None
        }
      }
    }

    // adapted from http://paulbourke.net/geometry/pointlineplane/
    def nearest(c: GeoCoord): GeoCoord = {
      val d = s0.delta
      val dx = d.x
      val dy = d.y
      val u = ((c.x - s0._1.x) * dx + (c.y - s0._1.y) * dy) / (dx * dx + dy * dy)
      if (u < 0) {
        s0._1
      } else if (u > 1) {
        s0._2
      } else {
        new GeoCoord(s0._1.y + u * dy, s0._1.x + u * dx)
      }
    }

    def distanceSquared(c: GeoCoord): Double = nearest(c).distanceSquared(c)
  }

  object H3Index {

    import Edge.{Edge, None}
    import Mode.{Hexagon, Mode, UniEdge}

    def apply(res: Int, base: Int, digits: List[Int], edge: Edge): H3Cell =
      toIndexBits(UniEdge, res, base, digits, edge)

    def apply(res: Int, base: Int, digits: List[Int]): H3Cell =
      toIndexBits(Hexagon, res, base, digits, None)

    private def toIndexBits(mode: Mode, res: Int, base: Int, digits: List[Int], edge: Edge): Long =
      (mode & 0xFL) << 59 | (edge & 0x7L) << 56 | (res & 0xFL) << 52 |
        (base & 0x7FL) << 45 | toDigitBits(res, digits)

    private def toDigitBits(res: Int, digits: List[Int]): Long = {
      val digs = digits.length match {
        case l: Int if l < res => digits.padTo(res, 0).padTo(15, 0x7)
        case l: Int if l < 15 => digits.padTo(15, 0x7)
        case l: Int if l > 15 => digits.take(15)
        case _ => digits
      }
      digs.foldLeft((0L, 42)) { case ((b, s), d) => (b | (d & 0x7L) << s, s - 3) }._1
    }

    val PentagonBaseCells = Array(4, 14, 24, 38, 49, 58, 63, 72, 83, 97, 107, 117)

    object Mode extends Enumeration(1) {
      type Mode = Value

      implicit def modeToInt(m: Mode): Int = m.id

      implicit def intToMode(i: Int): Mode = Mode(i)

      val Hexagon, UniEdge = Value
    }

    object Edge extends Enumeration {
      type Edge = Value

      implicit def edgeToInt(e: Edge): Int = e.id

      implicit def intToEdge(i: Int): Edge = Edge(i)

      val None, Edge1, Edge2, Edge3, Edge4, Edge5, Edge6 = Value
    }

    implicit class H3Cell(val index: Long) extends AnyVal {
      import scala.collection.JavaConversions._

      def mode: Mode = (index >> 59 & 0x0F).toInt

      def edge: Edge = (index >> 56 & 0x07).toInt

      def res: Int = (index >> 52 & 0x0F).toInt

      def base: Int = (index >> 45 & 0x7F).toInt

      def digit(n: Int): Int = (index >> (42 - n * 3) & 0x07).toInt

      def digits: List[Int] = (0 until res).map(digit).toList

      def isPentagon: Boolean = PentagonBaseCells.contains(base) && digits.take(res).sum == 0

      def toAddress: String = H3.h3ToString(index)
      def toPoint: GeoCoord = H3.h3ToGeo(index)
      def toPolygon: Iterable[GeoCoord] = H3.h3ToGeoBoundary(index)

      def toSegments: Iterable[Segment] = {
        val coords = toPolygon
        coords.zip(coords.tail)
      }

      def boundaryIntersectsLine(s1: Segment): Boolean = {
        toSegments.exists(s2 => s1.intersection(s2).nonEmpty)
      }

      def boundaryIntersectsLines(edges: Set[Segment]): Boolean = {
        edges.exists(s => boundaryIntersectsLine(s))
      }

      /** produces a hollow ring k steps out from the index
       */
      def hexRing(k: Int = 1): List[Long] = H3.hexRing(index, k).map(Long2long).toList

      /** returns everything within k steps, including the center index
       */
      def kRing(k: Int = 1): List[Long] = H3.kRing(index, k).map(Long2long).toList

      def children(r: Int): List[Long] = H3.h3ToChildren(index, r).map(Long2long).toList
      def parent(r: Int): Long = H3.h3ToParent(index, r)

      def toIndexRange: (Long, Long) = {
        val min = H3.h3ToCenterChild(index, maxValidResolution)
        val max = toRes15
        (min, max)
      }

      def toRes15: Long = (15L << 52) | index

    }

  }

}

