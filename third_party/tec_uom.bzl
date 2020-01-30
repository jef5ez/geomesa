load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "tec_uom_uom_se",
      artifact = "tec.uom:uom-se:1.0.8",
      artifact_sha256 = "ca1db04bbc0871a07b1553ad7028c22d583d0a1c4afc5e35d8fa39933e4b42a1",
      deps = [
          "@javax_measure_unit_api",
          "@tec_uom_lib_uom_lib_common"
      ],
  )
