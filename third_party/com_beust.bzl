load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_beust_jcommander",
      artifact = "com.beust:jcommander:1.48",
      artifact_sha256 = "a7313fcfde070930e40ec79edf3c5948cf34e4f0d25cb3a09f9963d8bdd84113",
  )
