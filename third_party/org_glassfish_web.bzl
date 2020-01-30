load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_web_javax_el",
      artifact = "org.glassfish.web:javax.el:2.2.4",
      artifact_sha256 = "787e7e247da8008c699bafd8e086ccae13e6f3cac3c07ca1c698e44f917b42de",
      deps = [
          "@javax_el_javax_el_api"
      ],
  )
