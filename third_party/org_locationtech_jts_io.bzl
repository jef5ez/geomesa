load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_locationtech_jts_io_jts_io_common",
      artifact = "org.locationtech.jts.io:jts-io-common:1.16.0",
      artifact_sha256 = "303e0ae0f27a041e229861a42d83c8ce7f911ecc01cb5d3e15b7256af76b8710",
      deps = [
          "@com_googlecode_json_simple_json_simple",
          "@org_locationtech_jts_jts_core"
      ],
  )
