load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_jersey_bundles_repackaged_jersey_guava",
      artifact = "org.glassfish.jersey.bundles.repackaged:jersey-guava:2.22.2",
      artifact_sha256 = "0fdcc75d025aff4032d3b8be909b5a082913b27d953ad82dd5df2ad29aea636b",
  )
