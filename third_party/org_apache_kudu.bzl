load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_kudu_kudu_client",
      artifact = "org.apache.kudu:kudu-client:1.7.0",
      artifact_sha256 = "25b09a4709b52f4d6ee484edf98cffa16f45bf37a12449c5ba40db264b985b7a",
      deps = [
          "@com_stumbleupon_async",
          "@org_apache_yetus_audience_annotations",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_kudu_kudu_mapreduce",
      artifact = "org.apache.kudu:kudu-mapreduce:1.7.0",
      artifact_sha256 = "b615059ee5e70765b0cb24c0db7b3f4c1945b313e04231a32e9f2b744f25efd2",
      deps = [
          "@com_stumbleupon_async",
          "@org_apache_kudu_kudu_client",
          "@org_apache_yetus_audience_annotations",
          "@org_slf4j_slf4j_api"
      ],
  )
