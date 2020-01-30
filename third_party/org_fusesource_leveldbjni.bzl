load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_fusesource_leveldbjni_leveldbjni_all",
      artifact = "org.fusesource.leveldbjni:leveldbjni-all:1.8",
      artifact_sha256 = "c297213b0e6f9392305952753f3099a4c02e70b3656266fe01867e7b6c160ffe",
  )
