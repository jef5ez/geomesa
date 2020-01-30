load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_roaringbitmap_RoaringBitmap",
      artifact = "org.roaringbitmap:RoaringBitmap:0.5.11",
      artifact_sha256 = "bad2fcf146d4a41cb188a28a4216f15cc470cd2fb6417a7d0005e7f8221ff312",
  )
