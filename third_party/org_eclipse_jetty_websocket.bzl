load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_eclipse_jetty_websocket_javax_websocket_client_impl",
      artifact = "org.eclipse.jetty.websocket:javax-websocket-client-impl:9.4.12.v20180830",
      artifact_sha256 = "44a45b1a5b23fa3828324c32534dd51c2b544ccc70f693305069aef50536e3ec",
      deps = [
          "@javax_websocket_javax_websocket_client_api",
          "@org_eclipse_jetty_websocket_websocket_client"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_websocket_javax_websocket_server_impl",
      artifact = "org.eclipse.jetty.websocket:javax-websocket-server-impl:9.4.12.v20180830",
      artifact_sha256 = "f3fd0eccd03087fa2f9441472ec083b2df81daa792da5600992efd19695ddd42",
      deps = [
          "@javax_websocket_javax_websocket_api",
          "@org_eclipse_jetty_jetty_annotations",
          "@org_eclipse_jetty_websocket_javax_websocket_client_impl",
          "@org_eclipse_jetty_websocket_websocket_server"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_websocket_websocket_api",
      artifact = "org.eclipse.jetty.websocket:websocket-api:9.4.12.v20180830",
      artifact_sha256 = "6f7ecb42601058ffe4a6c19c5340cac3ebf0f83e2e252b457558f104238278e3",
  )


  import_external(
      name = "org_eclipse_jetty_websocket_websocket_client",
      artifact = "org.eclipse.jetty.websocket:websocket-client:9.4.12.v20180830",
      artifact_sha256 = "97c6882c858a75776773eaccc01739757c4e9f60a51613878c1f2b2ba03d91af",
      deps = [
          "@org_eclipse_jetty_jetty_client",
          "@org_eclipse_jetty_jetty_io",
          "@org_eclipse_jetty_jetty_util",
          "@org_eclipse_jetty_jetty_xml",
          "@org_eclipse_jetty_websocket_websocket_common"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_websocket_websocket_common",
      artifact = "org.eclipse.jetty.websocket:websocket-common:9.4.12.v20180830",
      artifact_sha256 = "3c35aefa720c51e09532c16fdbfaaebd1af3e07dee699dacaba8e0ab0adf88e5",
      deps = [
          "@org_eclipse_jetty_jetty_io",
          "@org_eclipse_jetty_jetty_util",
          "@org_eclipse_jetty_websocket_websocket_api"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_websocket_websocket_server",
      artifact = "org.eclipse.jetty.websocket:websocket-server:9.4.12.v20180830",
      artifact_sha256 = "7b1bd39006be8c32d7426a119567d860b3e4a3dc3c01a5c91326450bb0213a03",
      deps = [
          "@org_eclipse_jetty_jetty_http",
          "@org_eclipse_jetty_jetty_servlet",
          "@org_eclipse_jetty_websocket_websocket_client",
          "@org_eclipse_jetty_websocket_websocket_common",
          "@org_eclipse_jetty_websocket_websocket_servlet"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_websocket_websocket_servlet",
      artifact = "org.eclipse.jetty.websocket:websocket-servlet:9.4.12.v20180830",
      artifact_sha256 = "8d43e0882759ecd093bd1a5a0ef2b4db38ac279212488a34edb8d7de7c45cc4d",
      deps = [
          "@javax_servlet_javax_servlet_api//:linkable",
          "@org_eclipse_jetty_websocket_websocket_api"
      ],
  )
