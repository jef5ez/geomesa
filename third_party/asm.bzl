load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "asm_asm",
      artifact = "asm:asm:3.1",
      artifact_sha256 = "333ff5369043975b7e031b8b27206937441854738e038c1f47f98d072a20437a",
  )
