load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "redis_clients_jedis",
      artifact = "redis.clients:jedis:3.0.1",
      artifact_sha256 = "a94e11d64a0b40b45122d68efbc6f6c4499462f774e97b8435001dfaff71142e",
      deps = [
          "@org_apache_commons_commons_pool2",
          "@org_slf4j_slf4j_api"
      ],
  )
