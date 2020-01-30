load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_net_commons_net",
      artifact = "commons-net:commons-net:3.3",
      artifact_sha256 = "b35ad597f17a6f221575df2f729a9de8f70390509e047680771e713bad713fb9",
  )
