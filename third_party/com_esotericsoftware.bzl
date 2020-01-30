load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_esotericsoftware_kryo_shaded",
      artifact = "com.esotericsoftware:kryo-shaded:3.0.3",
      artifact_sha256 = "71727556d387eada4578305fd337b3e046ecf8535f99ed66169ab2a3034418e0",
      deps = [
          "@com_esotericsoftware_minlog",
          "@org_objenesis_objenesis"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "com_esotericsoftware_minlog",
      artifact = "com.esotericsoftware:minlog:1.3.0",
      artifact_sha256 = "f7b399d3a5478a4f3e0d98bd1c9f47766119c66414bc33aa0f6cde0066f24cc2",
  )
