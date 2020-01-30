load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_codehaus_janino_commons_compiler",
      artifact = "org.codehaus.janino:commons-compiler:3.0.8",
      artifact_sha256 = "7e173c8524423bd46fa7012d066ffbf1e8389caaf3786b33bb726f18b398f70b",
  )


  import_external(
      name = "org_codehaus_janino_janino",
      artifact = "org.codehaus.janino:janino:3.0.8",
      artifact_sha256 = "d05d1b45bd70851cbede4ffc371b21ead998776cf2ffcd69d0aec3aa0b112a19",
      deps = [
          "@org_codehaus_janino_commons_compiler"
      ],
  )
