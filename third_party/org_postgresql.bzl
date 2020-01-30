load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_postgresql_postgresql",
      artifact = "org.postgresql:postgresql:42.2.5",
  )
