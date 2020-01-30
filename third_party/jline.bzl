load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "jline_jline",
      artifact = "jline:jline:2.11",
  )
