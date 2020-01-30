load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_vlkan_flatbuffers",
      artifact = "com.vlkan:flatbuffers:1.2.0-3f79e055",
      artifact_sha256 = "743f97316096ba6e8528914ea2b062f6a02fc91ec73c98a5a46240d6d67e6898",
  )
