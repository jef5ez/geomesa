load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_eclipse_xsd_org_eclipse_xsd",
      artifact = "org.eclipse.xsd:org.eclipse.xsd:2.12.0",
      artifact_sha256 = "0cbded7b090a2205c367b6d08f6ab32dc6857265b87673a4e51b77301ef1b953",
  )
