load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "log4j_log4j",
      artifact = "log4j:log4j:1.2.17",
      artifact_sha256 = "1d31696445697720527091754369082a6651bd49781b6005deb94e56753406f9",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
