load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_daemon_commons_daemon",
      artifact = "commons-daemon:commons-daemon:1.0.13",
      artifact_sha256 = "fd63b583fd3e8baeae22efacbd5a4f91c1fd97f56248e62e2615efa7b81daeaa",
  )
