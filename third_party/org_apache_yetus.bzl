load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_yetus_audience_annotations",
      artifact = "org.apache.yetus:audience-annotations:0.7.0",
      artifact_sha256 = "144c48265efe0e5c368a9aed15d09597c162451aa76b513d6d9c15721cd4804d",
  )
