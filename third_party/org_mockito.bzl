load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_mockito_mockito_core",
      artifact = "org.mockito:mockito-core:2.18.0",
      artifact_sha256 = "ab09b99d6c968dfaab50efef1dd0ec7091fd2d6f27e408d1a11dbb2fd64d203a",
      deps = [
          "@net_bytebuddy_byte_buddy",
          "@net_bytebuddy_byte_buddy_agent",
          "@org_objenesis_objenesis"
      ],
  )
