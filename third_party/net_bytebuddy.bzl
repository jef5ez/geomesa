load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_bytebuddy_byte_buddy",
      artifact = "net.bytebuddy:byte-buddy:1.8.3",
      artifact_sha256 = "1c7c222d5c317481538117e54029c289c5a1605a3cdcadf4e7f7cc1fe7469277",
  )


  import_external(
      name = "net_bytebuddy_byte_buddy_agent",
      artifact = "net.bytebuddy:byte-buddy-agent:1.8.3",
      artifact_sha256 = "1c9c51040efbc74e4803709097a506691eb75e5c5298788d7370bb78e8ea2494",
  )
