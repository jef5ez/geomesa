load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_objenesis_objenesis",
      artifact = "org.objenesis:objenesis:2.1",
  )
