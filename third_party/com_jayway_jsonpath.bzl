load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_jayway_jsonpath_json_path",
      artifact = "com.jayway.jsonpath:json-path:2.2.0",
      artifact_sha256 = "f74833d885773a0a3a937ebdb632ca2ff6d95b52cf7f5725de6dd688844207cd",
      deps = [
          "@net_minidev_json_smart",
          "@org_slf4j_slf4j_api"
      ],
    # EXCLUDES org.ow2.asm:asm
  )
