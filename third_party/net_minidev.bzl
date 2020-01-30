load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_minidev_accessors_smart",
      artifact = "net.minidev:accessors-smart:1.1",
      artifact_sha256 = "e6e04753913546da3ff0fbf532ac2831d0266f69246b1e6e295ba367aa9f02a5",
  )


  import_external(
      name = "net_minidev_json_smart",
      artifact = "net.minidev:json-smart:2.2.1",
      artifact_sha256 = "871ff1fca0709fbf924a86704f1c7070e1ee774881c76feb1ba781351efe4693",
      deps = [
          "@net_minidev_accessors_smart"
      ],
  )
