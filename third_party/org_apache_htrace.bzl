load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_htrace_htrace_core",
      artifact = "org.apache.htrace:htrace-core:3.1.0-incubating",
      artifact_sha256 = "d96c869afaf65315ece8ca09673b187557e9dbaad31df24467a5aa759812188d",
  )
