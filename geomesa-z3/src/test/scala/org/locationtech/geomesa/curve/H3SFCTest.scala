/***********************************************************************
 * Copyright (c) 2013-2020 Commonwealth Computer Research, Inc.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Apache License, Version 2.0
 * which accompanies this distribution and is available at
 * http://www.opensource.org/licenses/apache2.0.php.
 ***********************************************************************/

package org.locationtech.geomesa.curve

import org.junit.runner.RunWith
import org.specs2.mutable.Specification
import org.specs2.runner.JUnitRunner
import H3SFC._
import H3Index._
import com.uber.h3core.util.GeoCoord
import org.locationtech.sfcurve.IndexRange

@RunWith(classOf[JUnitRunner])
class H3SFCTest extends Specification {

  "H3Index" >> {
    "index ranges" >> {
      "res 15 cell's range is itself" >> {
        val cell = H3.geoToH3(0, 0, 15)
        val range = cell.toIndexRange
        range mustEqual((cell, cell))
      }
      "res 13 cell's range should contain its children" >> {
        val cell = H3.geoToH3(0, 0, 13)
        val range = cell.toIndexRange
        val children = cell.children(15)
        children.map(c => {
          c must be_>=(range._1)
          c must be_<=(range._2)
        })
      }
    }
  }

  "SegmentOps" >> {
    "line intersects" >> {
      "intersects itself" >> {
        val zero = new GeoCoord(0, 0)
        val one = new GeoCoord(0, 1)
        val seg = (zero, one)
        seg.intersection(seg) must not(beEmpty)
      }
      "intersects opposite direction" >> {
        val zero = new GeoCoord(0, 0)
        val one = new GeoCoord(0, 1)
        val seg = (zero, one)
        seg.intersection((one, zero)) must not(beEmpty)
      }
      "intersects perpendicular" >> {
        val a = new GeoCoord(0, 0)
        val b = new GeoCoord(1, 1)
        val seg = (a, b)
        val c = new GeoCoord(1, 0)
        val d = new GeoCoord(0, 1)
        seg.intersection((c, d)) must not(beEmpty)
      }
    }
  }

  "H3SFC" >> {
    "does something" >> {
      val sfc = new H3SFC(11)
      val ranges: Seq[IndexRange] = sfc.ranges((0d, 1d), (0d, 1d))
      val a = new GeoCoord(0, 0).toH3Index(11)
      val b = new GeoCoord(1, 1).toH3Index(11)
      val c = new GeoCoord(0, 1).toH3Index(11)
      val d = new GeoCoord(1, 0).toH3Index(11)
      val indices = Seq(a, b, c, d).flatMap(_.children(15))
      indices.map(i => {
        ranges.exists(r => i >= r.lower && i <= r.upper) must beTrue
      })
    }

  }

}
