load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_dbcp_commons_dbcp",
      artifact = "commons-dbcp:commons-dbcp:1.4",
      artifact_sha256 = "a6e2d83551d0e5b59aa942359f3010d35e79365e6552ad3dbaa6776e4851e4f6",
      deps = [
          "@commons_pool_commons_pool"
      ],
  )
