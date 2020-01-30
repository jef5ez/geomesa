load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_acplt_oncrpc",
      artifact = "org.acplt:oncrpc:1.0.7",
      artifact_sha256 = "953e0f388db0246798f35987a2ad17a2219a29e3c2f9dd00a766c24565162e4a",
  )
