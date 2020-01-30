load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_camel_camel_core",
      artifact = "org.apache.camel:camel-core:2.24.1",
      artifact_sha256 = "ebb6f8146d88a2d638181fa808196367596b61036a4dcc5705732b2fbecf7e6c",
      deps = [
          "@com_sun_xml_bind_jaxb_core",
          "@com_sun_xml_bind_jaxb_impl",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_camel_camel_netty4",
      artifact = "org.apache.camel:camel-netty4:2.24.1",
      artifact_sha256 = "74b52b487f48cbf1d96ea9c09f74e76f8bdf6dcd86a035b7500daa83fc97f902",
      deps = [
          "@com_sun_xml_bind_jaxb_core",
          "@com_sun_xml_bind_jaxb_impl",
          "@commons_pool_commons_pool",
          "@io_netty_netty_all",
          "@org_apache_camel_camel_core"
      ],
  )


  import_external(
      name = "org_apache_camel_camel_scala",
      artifact = "org.apache.camel:camel-scala:2.24.1",
      artifact_sha256 = "48f4d2a10a28615eb1d48b4b18a21b0618b71ae172e13b8f25ac5f2ec6ae52f5",
      deps = [
          "@com_sun_xml_bind_jaxb_core",
          "@com_sun_xml_bind_jaxb_impl",
          "@org_apache_camel_camel_core"
      ],
  )
