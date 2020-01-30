load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_geotools_xsd_gt_xsd_core",
      artifact = "org.geotools.xsd:gt-xsd-core:21.1",
      artifact_sha256 = "a4f9dfceffcc23a14d572d295fb1ba2b03a38168ada2484541e8b234625c8e57",
      deps = [
          "@commons_collections_commons_collections",
          "@commons_io_commons_io",
          "@commons_jxpath_commons_jxpath",
          "@org_eclipse_emf_org_eclipse_emf_common",
          "@org_eclipse_emf_org_eclipse_emf_ecore",
          "@org_eclipse_emf_org_eclipse_emf_ecore_xmi",
          "@org_eclipse_xsd_org_eclipse_xsd",
          "@org_geotools_gt_main",
          "@org_geotools_gt_xml",
          "@picocontainer_picocontainer"
      ],
  )


  import_external(
      name = "org_geotools_xsd_gt_xsd_fes",
      artifact = "org.geotools.xsd:gt-xsd-fes:21.1",
      artifact_sha256 = "a2bf8839ca44e81760964bd3e1cf22b1a7e438207cead2f37ece455cbe4a6e77",
      deps = [
          "@org_geotools_gt_main",
          "@org_geotools_gt_referencing",
          "@org_geotools_ogc_net_opengis_fes",
          "@org_geotools_xsd_gt_xsd_core",
          "@org_geotools_xsd_gt_xsd_gml3",
          "@org_geotools_xsd_gt_xsd_ows"
      ],
  )


  import_external(
      name = "org_geotools_xsd_gt_xsd_filter",
      artifact = "org.geotools.xsd:gt-xsd-filter:21.1",
      artifact_sha256 = "1d66fbacde55e238c2dd28431c1809a9f2065230f60cd76413dc7497d5bac853",
      deps = [
          "@org_geotools_gt_main",
          "@org_geotools_gt_referencing",
          "@org_geotools_xsd_gt_xsd_core",
          "@org_geotools_xsd_gt_xsd_gml2",
          "@org_geotools_xsd_gt_xsd_gml3"
      ],
  )


  import_external(
      name = "org_geotools_xsd_gt_xsd_gml2",
      artifact = "org.geotools.xsd:gt-xsd-gml2:21.1",
      artifact_sha256 = "a055b47904bf2b693374a8e8bf041211c75a60c40637d6edd4ec025d2e028e9e",
      deps = [
          "@org_geotools_gt_main",
          "@org_geotools_gt_referencing",
          "@org_geotools_xsd_gt_xsd_core"
      ],
  )


  import_external(
      name = "org_geotools_xsd_gt_xsd_gml3",
      artifact = "org.geotools.xsd:gt-xsd-gml3:21.1",
      artifact_sha256 = "2adc781303c41fd732e4dd6faa2383e713be04935397d1c8c2e10842e0cb4f4a",
      deps = [
          "@org_geotools_gt_main",
          "@org_geotools_gt_referencing",
          "@org_geotools_xsd_gt_xsd_core",
          "@org_geotools_xsd_gt_xsd_gml2"
      ],
  )


  import_external(
      name = "org_geotools_xsd_gt_xsd_ows",
      artifact = "org.geotools.xsd:gt-xsd-ows:21.1",
      artifact_sha256 = "1815e03ff7c10dae23038a282b194e3dc5a26f38a078ead5127b290c2a132008",
      deps = [
          "@org_geotools_ogc_net_opengis_ows",
          "@org_geotools_xsd_gt_xsd_filter"
      ],
  )


  import_external(
      name = "org_geotools_xsd_gt_xsd_wfs",
      artifact = "org.geotools.xsd:gt-xsd-wfs:21.1",
      artifact_sha256 = "c712b01a05466f13e8db7f21c94f37d9235b197e69e622a4740b7a97ba843349",
      deps = [
          "@org_geotools_gt_main",
          "@org_geotools_ogc_net_opengis_wfs",
          "@org_geotools_xsd_gt_xsd_fes",
          "@org_geotools_xsd_gt_xsd_filter",
          "@org_geotools_xsd_gt_xsd_ows"
      ],
    # EXCLUDES javax.media:jai_core
  )
