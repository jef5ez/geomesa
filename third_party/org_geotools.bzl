load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_geotools_gt_coverage",
      artifact = "org.geotools:gt-coverage:21.1",
      artifact_sha256 = "baa65e8f412b15245958444d10998406047b990ea013cf12875fb1052cadf6b1",
      deps = [
          "@commons_io_commons_io",
          "@it_geosolutions_jaiext_affine_jt_affine",
          "@it_geosolutions_jaiext_algebra_jt_algebra",
          "@it_geosolutions_jaiext_bandcombine_jt_bandcombine",
          "@it_geosolutions_jaiext_bandmerge_jt_bandmerge",
          "@it_geosolutions_jaiext_bandselect_jt_bandselect",
          "@it_geosolutions_jaiext_binarize_jt_binarize",
          "@it_geosolutions_jaiext_border_jt_border",
          "@it_geosolutions_jaiext_buffer_jt_buffer",
          "@it_geosolutions_jaiext_classifier_jt_classifier",
          "@it_geosolutions_jaiext_colorconvert_jt_colorconvert",
          "@it_geosolutions_jaiext_colorindexer_jt_colorindexer",
          "@it_geosolutions_jaiext_crop_jt_crop",
          "@it_geosolutions_jaiext_errordiffusion_jt_errordiffusion",
          "@it_geosolutions_jaiext_format_jt_format",
          "@it_geosolutions_jaiext_imagefunction_jt_imagefunction",
          "@it_geosolutions_jaiext_iterators_jt_iterators",
          "@it_geosolutions_jaiext_lookup_jt_lookup",
          "@it_geosolutions_jaiext_mosaic_jt_mosaic",
          "@it_geosolutions_jaiext_nullop_jt_nullop",
          "@it_geosolutions_jaiext_orderdither_jt_orderdither",
          "@it_geosolutions_jaiext_piecewise_jt_piecewise",
          "@it_geosolutions_jaiext_rescale_jt_rescale",
          "@it_geosolutions_jaiext_rlookup_jt_rlookup",
          "@it_geosolutions_jaiext_scale2_jt_scale2",
          "@it_geosolutions_jaiext_scale_jt_scale",
          "@it_geosolutions_jaiext_shadedrelief_jt_shadedrelief",
          "@it_geosolutions_jaiext_stats_jt_stats",
          "@it_geosolutions_jaiext_translate_jt_translate",
          "@it_geosolutions_jaiext_utilities_jt_utilities",
          "@it_geosolutions_jaiext_vectorbin_jt_vectorbin",
          "@it_geosolutions_jaiext_warp_jt_warp",
          "@it_geosolutions_jaiext_zonal_jt_zonal",
          "@org_geotools_gt_main",
          "@org_geotools_gt_referencing",
          "@org_jaitools_jt_utils",
          "@org_jaitools_jt_zonalstats",
          "@org_locationtech_jts_jts_core"
      ],
  )


  import_external(
      name = "org_geotools_gt_cql",
      artifact = "org.geotools:gt-cql:21.1",
      artifact_sha256 = "9fcc92ce8de638033e17b1605d746385617cf824fc2beb2905f5700e2a7165c4",
      deps = [
          "@org_geotools_gt_main",
          "@org_geotools_gt_xml"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_epsg_hsql",
      artifact = "org.geotools:gt-epsg-hsql:21.1",
      artifact_sha256 = "8ea575aae40c99dae0cb30ab314f24089485e5dc882274637b6778bd6a6f80c2",
      deps = [
          "@org_geotools_gt_referencing",
          "@org_hsqldb_hsqldb"
      ],
    # EXCLUDES jgridshift:jgridshift
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_epsg_wkt",
      artifact = "org.geotools:gt-epsg-wkt:21.1",
      artifact_sha256 = "bf21e18db8daa7d132253472cd77d5d0c83907680a17b4bd9548804243c7dc08",
      deps = [
          "@org_geotools_gt_referencing"
      ],
    # EXCLUDES jgridshift:jgridshift
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_geojson",
      artifact = "org.geotools:gt-geojson:21.1",
      artifact_sha256 = "2eeb168d0e36d1e7d4a3660d4e860f1898b77a752195b362a7840ef367778af7",
      deps = [
          "@com_googlecode_json_simple_json_simple",
          "@org_apache_commons_commons_lang3",
          "@org_geotools_gt_main"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_geometry",
      artifact = "org.geotools:gt-geometry:21.1",
      artifact_sha256 = "ac4ecfddbe576b84b39ba6655639363d95fe123f31a5015ade626078a826bf2a",
      deps = [
          "@org_geotools_gt_main"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_geotiff",
      artifact = "org.geotools:gt-geotiff:21.1",
      artifact_sha256 = "4184993b8c45460fad60ab8252dd05eea92afc039476afd197526ec6a92b6528",
      deps = [
          "@org_geotools_gt_coverage",
          "@org_geotools_gt_main",
          "@org_geotools_gt_referencing"
      ],
    # EXCLUDES javax.media:jai_imageio
    # EXCLUDES it.geosolutions.imageio-ext:*
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_grid",
      artifact = "org.geotools:gt-grid:21.1",
      artifact_sha256 = "12911fbb05b147bd763d48851792a8a9e43dde2ec0a26568d404ff7c625af4c4",
      deps = [
          "@org_geotools_gt_main"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_imageio_ext_gdal",
      artifact = "org.geotools:gt-imageio-ext-gdal:21.1",
      artifact_sha256 = "abab9bbcf03ff238dc9231093cd9c035a3b9fabefb44e2050b9cedb03e1ccbf8",
      deps = [
          "@org_geotools_gt_coverage",
          "@org_geotools_gt_epsg_hsql"
      ],
    # EXCLUDES javax.media:jai_imageio
    # EXCLUDES it.geosolutions.imageio-ext:*
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_jdbc",
      artifact = "org.geotools:gt-jdbc:21.1",
      artifact_sha256 = "d4a5e97a59da63744a7b3434e199c3e8a502d70bd5eae38f32e72cb3c2957cfc",
      deps = [
          "@commons_collections_commons_collections",
          "@commons_dbcp_commons_dbcp",
          "@org_geotools_gt_main"
      ],
  )


  import_external(
      name = "org_geotools_gt_main",
      artifact = "org.geotools:gt-main:21.1",
      artifact_sha256 = "3b2f3946ec083d57c61e3b2f15984319e177ff1009a29a98714f61692af8f0b5",
      deps = [
          "@com_fasterxml_jackson_core_jackson_core",
          "@org_apache_commons_commons_text",
          "@org_geotools_gt_referencing",
          "@org_jdom_jdom2",
          "@org_locationtech_jts_jts_core"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_metadata",
      artifact = "org.geotools:gt-metadata:21.1",
      artifact_sha256 = "a4e3a89c0a7679be9cd814b677db10c679680259e6fb457485d2a219dc97f67d",
      deps = [
          "@org_apache_commons_commons_lang3",
          "@org_geotools_gt_opengis"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_opengis",
      artifact = "org.geotools:gt-opengis:21.1",
      artifact_sha256 = "5f530ced25e16a67dcacff755095f193951be99d8e5ba17d8083d24343531678",
      deps = [
          "@commons_pool_commons_pool",
          "@systems_uom_systems_common_java8"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_process",
      artifact = "org.geotools:gt-process:21.1",
      artifact_sha256 = "24bbb87ffa69404963499c8cdf02a2be7cabac1c7840ac70f4cb1e845ff48873",
      deps = [
          "@org_geotools_gt_main"
      ],
    # EXCLUDES javax.media:jai_imageio
    # EXCLUDES org.locationtech.jts:jts-example
    # EXCLUDES javax.media:jai_core
    # EXCLUDES org.jaitools:jt-utils
    # EXCLUDES it.geosolutions.imageio-ext:*
  )


  import_external(
      name = "org_geotools_gt_process_feature",
      artifact = "org.geotools:gt-process-feature:21.1",
      artifact_sha256 = "9acb34cbf0918a2f1a3847c4b13cf7a34671b6bdf2a4bda494f1e991ca110be8",
      deps = [
          "@org_geotools_gt_coverage",
          "@org_geotools_gt_cql",
          "@org_geotools_gt_grid",
          "@org_geotools_gt_process"
      ],
    # EXCLUDES javax.media:jai_imageio
    # EXCLUDES javax.media:jai_codec
    # EXCLUDES org.locationtech.jts:jts-example
    # EXCLUDES javax.media:jai_core
    # EXCLUDES it.geosolutions.imageio-ext:*
  )


  import_external(
      name = "org_geotools_gt_referencing",
      artifact = "org.geotools:gt-referencing:21.1",
      artifact_sha256 = "9e8ed7633d6fa3c00b6831c1316efc509680a005b1dea4c2ae86cd107657c423",
      deps = [
          "@commons_pool_commons_pool",
          "@net_sf_geographiclib_GeographicLib_Java",
          "@org_ejml_ejml_ddense",
          "@org_geotools_gt_metadata"
      ],
    # EXCLUDES jgridshift:jgridshift
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_render",
      artifact = "org.geotools:gt-render:21.1",
      artifact_sha256 = "7474a0a641a4804d9646d844306e1ba8294dbcc710663b51c74f5dd5f3d6d24c",
      deps = [
          "@com_conversantmedia_disruptor",
          "@org_geotools_gt_coverage",
          "@org_geotools_gt_cql",
          "@org_geotools_gt_main"
      ],
    # EXCLUDES javax.media:jai_imageio
    # EXCLUDES it.geosolutions.imageio-ext:*
    # EXCLUDES javax.media:jai_core
    # EXCLUDES org.locationtech.jts:jts-example
  )


  import_external(
      name = "org_geotools_gt_shapefile",
      artifact = "org.geotools:gt-shapefile:21.1",
      artifact_sha256 = "3d9ed86ea0fa383fe1d079ef0cbd8869900bc8149a0e08795477698f52c62c60",
      deps = [
          "@org_geotools_gt_main",
          "@org_jdom_jdom2"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_transform",
      artifact = "org.geotools:gt-transform:21.1",
      artifact_sha256 = "5d581cfb0f4f51046be8e4522586b5afdc3e3b252743d215d898f0dc135eb42e",
      deps = [
          "@org_geotools_gt_main"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_gt_xml",
      artifact = "org.geotools:gt-xml:21.1",
      artifact_sha256 = "1e208a102871fce0d22604f81418440519dfbd6cc4ed0e35e3c328f16aa373cc",
      deps = [
          "@commons_collections_commons_collections",
          "@org_apache_xml_xml_commons_resolver",
          "@org_geotools_gt_main"
      ],
    # EXCLUDES commons-jxpath:commons-jxpath
    # EXCLUDES javax.media:jai_core
  )
