load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_googlecode_json_simple_json_simple",
      artifact = "com.googlecode.json-simple:json-simple:1.1",
  )
