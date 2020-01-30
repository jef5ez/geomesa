load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "systems_uom_systems_common_java8",
      artifact = "systems.uom:systems-common-java8:0.7.2",
      artifact_sha256 = "67d535fbb74d8c666a2d0a1f8d87ae53b297bfe5b9a68af9d10d61d0f98cac27",
      deps = [
          "@si_uom_si_quantity",
          "@si_uom_si_units_java8",
          "@tec_uom_uom_se"
      ],
  )
