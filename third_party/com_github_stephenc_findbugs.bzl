load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_github_stephenc_findbugs_findbugs_annotations",
      artifact = "com.github.stephenc.findbugs:findbugs-annotations:1.3.9-1",
      artifact_sha256 = "1e651066ed9ae35d7e3001d635d1dbba1c2965db0e4e33e2c14ad610543f225c",
  )
