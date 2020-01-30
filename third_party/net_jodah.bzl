load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_jodah_typetools",
      artifact = "net.jodah:typetools:0.5.0",
      artifact_sha256 = "c43b35f43379dae9dacbb010cd759655e64ddcd6893af75ef55aaea26eeec73c",
  )
