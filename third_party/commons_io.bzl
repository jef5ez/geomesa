load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_io_commons_io",
      artifact = "commons-io:commons-io:2.5",
      artifact_sha256 = "a10418348d234968600ccb1d988efcbbd08716e1d96936ccc1880e7d22513474",
  )
