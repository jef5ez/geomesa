load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_geotools_ogc_net_opengis_fes",
      artifact = "org.geotools.ogc:net.opengis.fes:21.1",
      artifact_sha256 = "2de9ba3fec88f9004992cb23f80f641912fb1764362963b26922007fe126c8ab",
      deps = [
          "@org_eclipse_emf_org_eclipse_emf_common",
          "@org_eclipse_emf_org_eclipse_emf_ecore",
          "@org_eclipse_emf_org_eclipse_emf_ecore_xmi",
          "@org_geotools_gt_opengis",
          "@org_geotools_ogc_net_opengis_ows"
      ],
  )


  import_external(
      name = "org_geotools_ogc_net_opengis_ows",
      artifact = "org.geotools.ogc:net.opengis.ows:21.1",
      artifact_sha256 = "8771da24cf59016e55b846e630a2358a1d87c70e147f5ce54274302f65ae93b1",
      deps = [
          "@org_eclipse_emf_org_eclipse_emf_common",
          "@org_eclipse_emf_org_eclipse_emf_ecore",
          "@org_eclipse_emf_org_eclipse_emf_ecore_xmi",
          "@org_geotools_ogc_org_w3_xlink"
      ],
  )


  import_external(
      name = "org_geotools_ogc_net_opengis_wfs",
      artifact = "org.geotools.ogc:net.opengis.wfs:21.1",
      artifact_sha256 = "761339d6bcd5bd6e316c41b48c110f38cad319bff84ce6df8888123425779dbe",
      deps = [
          "@org_eclipse_emf_org_eclipse_emf_common",
          "@org_eclipse_emf_org_eclipse_emf_ecore",
          "@org_eclipse_emf_org_eclipse_emf_ecore_xmi",
          "@org_geotools_gt_main",
          "@org_geotools_ogc_net_opengis_fes",
          "@org_geotools_ogc_org_w3_xlink"
      ],
  )


  import_external(
      name = "org_geotools_ogc_org_w3_xlink",
      artifact = "org.geotools.ogc:org.w3.xlink:21.1",
      artifact_sha256 = "9a36ceb2ccf740ce82f01effb178954e1b56dc86136c57828c4ccfaad2196c0f",
      deps = [
          "@org_eclipse_emf_org_eclipse_emf_common",
          "@org_eclipse_emf_org_eclipse_emf_ecore",
          "@org_eclipse_emf_org_eclipse_emf_ecore_xmi"
      ],
  )
