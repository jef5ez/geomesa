load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_slf4j_jcl_over_slf4j",
      artifact = "org.slf4j:jcl-over-slf4j:1.7.16",
      artifact_sha256 = "764d8698e00c08dfbd8f6426ed95619cbf5473327a2a7d3b6bea6b1d987c6547",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_slf4j_jul_to_slf4j",
      artifact = "org.slf4j:jul-to-slf4j:1.7.16",
      artifact_sha256 = "a67d98d27bfcbc120e0efbf47cf07fab85cb32b6b274d43257a29fa14bb659d0",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_slf4j_slf4j_api",
      artifact = "org.slf4j:slf4j-api:1.7.25",
      artifact_sha256 = "18c4a0095d5c1da6b817592e767bb23d29dd2f560ad74df75ff3961dbde25b79",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_slf4j_slf4j_log4j12",
      artifact = "org.slf4j:slf4j-log4j12:1.7.25",
      artifact_sha256 = "ddb343954deb6f046f862606c534178730c02ed23d0b7f6ca1012c1e3fa74273",
      deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_api"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
