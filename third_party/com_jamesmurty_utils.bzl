load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_jamesmurty_utils_java_xmlbuilder",
      artifact = "com.jamesmurty.utils:java-xmlbuilder:1.1",
      artifact_sha256 = "5257fdeb719b95039fc6cf35012527939856b2f2c9d763d593cc0cb64e88ab24",
      deps = [
          "@net_iharder_base64"
      ],
  )
