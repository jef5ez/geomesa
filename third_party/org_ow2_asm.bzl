load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_ow2_asm_asm",
      artifact = "org.ow2.asm:asm:6.2",
      artifact_sha256 = "917bda888bc543187325d5fbc1034207eed152574ef78df1734ca0aee40b7fc8",
  )


  import_external(
      name = "org_ow2_asm_asm_analysis",
      artifact = "org.ow2.asm:asm-analysis:6.2",
      artifact_sha256 = "62b2c0d818fde5c52cf6404aa10836dbb170a2c3fa8466e656f0f991732fa01f",
      deps = [
          "@org_ow2_asm_asm_tree"
      ],
  )


  import_external(
      name = "org_ow2_asm_asm_commons",
      artifact = "org.ow2.asm:asm-commons:6.2",
      artifact_sha256 = "15545913db06c987aa404f028e33501d9f27f8ced612f73727e3547ac4de878c",
      deps = [
          "@org_ow2_asm_asm",
          "@org_ow2_asm_asm_analysis",
          "@org_ow2_asm_asm_tree"
      ],
  )


  import_external(
      name = "org_ow2_asm_asm_tree",
      artifact = "org.ow2.asm:asm-tree:6.2",
      artifact_sha256 = "02317d9ed739dab470a96f44de712fde51a811362ca26852b34324388e61257c",
      deps = [
          "@org_ow2_asm_asm"
      ],
  )
