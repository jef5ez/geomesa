load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_google_protobuf_protobuf_java",
      artifact = "com.google.protobuf:protobuf-java:2.5.0",
      artifact_sha256 = "e0c1c64575c005601725e7c6a02cebf9e1285e888f756b2a1d73ffa8d725cc74",
  )
