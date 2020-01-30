load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_hsqldb_hsqldb",
      artifact = "org.hsqldb:hsqldb:2.4.1",
  )
