load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_jcraft_jsch",
      artifact = "com.jcraft:jsch:0.1.42",
      artifact_sha256 = "74297550aecc3b566ee19e49befb9cd49e2326c9d8d71ad5071bacc655b760dc",
  )


  import_external(
      name = "com_jcraft_jzlib",
      artifact = "com.jcraft:jzlib:1.1.3",
      artifact_sha256 = "89b1360f407381bf61fde411019d8cbd009ebb10cff715f3669017a031027560",
  )
