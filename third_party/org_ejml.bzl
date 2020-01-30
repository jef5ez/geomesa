load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_ejml_ejml_core",
      artifact = "org.ejml:ejml-core:0.34",
      artifact_sha256 = "f8489f5da8dbe4a923077d5f10510e43d27decd7225a7fb38a9a1a692e7948f2",
  )


  import_external(
      name = "org_ejml_ejml_ddense",
      artifact = "org.ejml:ejml-ddense:0.34",
      artifact_sha256 = "d9827b8da37c64d9d2e9f972758171668ab9a9dc0d659cacdb578017f7152816",
      deps = [
          "@org_ejml_ejml_core"
      ],
  )
