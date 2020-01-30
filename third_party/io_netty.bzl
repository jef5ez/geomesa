load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "io_netty_netty",
      artifact = "io.netty:netty:3.9.9.Final",
  )


  import_external(
      name = "io_netty_netty_all",
      artifact = "io.netty:netty-all:4.1.17.Final",
      artifact_sha256 = "578f39b27617662a69ad84cd3793f506f6350cbd75ae87e8e686f5e7bdd5161c",
  )


  import_external(
      name = "io_netty_netty_buffer",
      artifact = "io.netty:netty-buffer:4.1.17.Final",
      artifact_sha256 = "b24a28e2129fc11e1f6124ebf93725d1f9c0904ea679d261da7b2e21d4c8615e",
      deps = [
          "@io_netty_netty_common"
      ],
  )


  import_external(
      name = "io_netty_netty_codec",
      artifact = "io.netty:netty-codec:4.0.33.Final",
      deps = [
          "@io_netty_netty_transport"
      ],
  )


  import_external(
      name = "io_netty_netty_common",
      artifact = "io.netty:netty-common:4.1.17.Final",
      artifact_sha256 = "dddabdec01959180da44129d130301b84c23b473411288f143d5e29e0b098d26",
  )


  import_external(
      name = "io_netty_netty_handler",
      artifact = "io.netty:netty-handler:4.0.33.Final",
      deps = [
          "@io_netty_netty_buffer",
          "@io_netty_netty_codec",
          "@io_netty_netty_transport"
      ],
  )


  import_external(
      name = "io_netty_netty_transport",
      artifact = "io.netty:netty-transport:4.0.33.Final",
      deps = [
          "@io_netty_netty_buffer"
      ],
  )
