load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_google_code_gson_gson",
      artifact = "com.google.code.gson:gson:2.8.1",
      artifact_sha256 = "4f65e7dca6528d644031c43d159f1614f2ed58db7daf75f1e91a9fc1b57818d4",
  )
