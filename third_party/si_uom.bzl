load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "si_uom_si_quantity",
      artifact = "si.uom:si-quantity:0.7.1",
      artifact_sha256 = "a74433426d6ec15e72de2071418cd0f35f8add2217b5573ecb6f73a54db0edcb",
      deps = [
          "@javax_measure_unit_api"
      ],
  )


  import_external(
      name = "si_uom_si_units_java8",
      artifact = "si.uom:si-units-java8:0.7.1",
      artifact_sha256 = "bd2e158505240d5f1075bec48146df4115ecb19ac65231a0e3f005a8d38ec889",
      deps = [
          "@javax_measure_unit_api",
          "@si_uom_si_quantity",
          "@tec_uom_uom_se"
      ],
  )
