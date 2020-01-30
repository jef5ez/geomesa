load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_adobe_xmp_xmpcore",
      artifact = "com.adobe.xmp:xmpcore:5.1.2",
      artifact_sha256 = "0adcd63003aaff0a87b938f6accc2d890a2169c751a9b36881237f8546287090",
  )
