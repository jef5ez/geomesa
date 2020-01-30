load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_sun_xml_bind_jaxb_core",
      artifact = "com.sun.xml.bind:jaxb-core:2.3.0",
  )


  import_external(
      name = "com_sun_xml_bind_jaxb_impl",
      artifact = "com.sun.xml.bind:jaxb-impl:2.3.0",
    # EXCLUDES javax.jws:jsr181-api
  )
