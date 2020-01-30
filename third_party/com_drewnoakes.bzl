load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_drewnoakes_metadata_extractor",
      artifact = "com.drewnoakes:metadata-extractor:2.8.1",
      artifact_sha256 = "80337a113c2ffc29cabb8c888daf46d91e17485daf9b7c227c63b34edca4ede6",
      deps = [
          "@com_adobe_xmp_xmpcore"
      ],
  )
