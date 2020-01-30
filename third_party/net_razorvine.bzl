load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "net_razorvine_pyrolite",
      artifact = "net.razorvine:pyrolite:4.13",
      artifact_sha256 = "4ba424d328cbd7a6ff73108cce40d3cc376eef602b947e57fdc782171d92e463",
    # EXCLUDES net.razorvine:serpent
  )
