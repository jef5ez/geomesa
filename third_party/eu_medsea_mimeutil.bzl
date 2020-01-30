load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "eu_medsea_mimeutil_mime_util",
      artifact = "eu.medsea.mimeutil:mime-util:2.1.3",
      artifact_sha256 = "7512022ecd4228458a0ab456f9fcddac21f0759f1b07100c3528174eb63bdcaf",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.slf4j:slf4j-log4j12
    # EXCLUDES log4j:log4j
  )
