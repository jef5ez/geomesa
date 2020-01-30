load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "tec_uom_lib_uom_lib_common",
      artifact = "tec.uom.lib:uom-lib-common:1.0.2",
      artifact_sha256 = "88e0055a0050c5ed7ce2bac74f757aba35954296ce5c8ffc08ceb35dc83c4a20",
      deps = [
          "@javax_measure_unit_api"
      ],
  )
