load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_eclipse_jdt_core_compiler_ecj",
      artifact = "org.eclipse.jdt.core.compiler:ecj:4.4.2",
      artifact_sha256 = "2d6ee21554bbba012b6b0383be6e6587fa35370104e41c10a3eb47039fa3e6d1",
  )
