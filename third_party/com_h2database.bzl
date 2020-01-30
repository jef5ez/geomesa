load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_h2database_h2",
      artifact = "com.h2database:h2:1.4.192",
      artifact_sha256 = "225b22e9857235c46c93861410b60b8c81c10dc8985f4faf188985ba5445126c",
  )
