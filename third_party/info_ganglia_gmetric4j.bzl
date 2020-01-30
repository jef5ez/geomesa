load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "info_ganglia_gmetric4j_gmetric4j",
      artifact = "info.ganglia.gmetric4j:gmetric4j:1.0.7",
      artifact_sha256 = "b71d7e1ad919506385f4489084a05bf02a7fbda0b7eeb151fc6adae9866c3aba",
      deps = [
          "@org_acplt_oncrpc"
      ],
  )
