load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_github_jnr_jffi",
      artifact = "com.github.jnr:jffi:1.2.10",
      artifact_sha256 = "acf67c23f3320b69c8caae389f64e4d98ead14b591bac84b3f2592cbcf36a33e",
  )


  import_external(
      name = "com_github_jnr_jffi_native",
      artifact = "com.github.jnr:jffi:jar:native:1.2.10",
      artifact_sha256 = "c8bc5bce45a2bcb5520902b6195b8395e9caba1518c6b72ce69de6b9844e72ae",
  )


  import_external(
      name = "com_github_jnr_jnr_constants",
      artifact = "com.github.jnr:jnr-constants:0.9.0",
      artifact_sha256 = "fef43ba363a6c5cc5dab671b2ea06d06511cf73ed32ac1ee82e893a840ed2733",
    # EXCLUDES com.github.jnr:jnr-ffi
  )


  import_external(
      name = "com_github_jnr_jnr_enxio",
      artifact = "com.github.jnr:jnr-enxio:0.10",
      artifact_sha256 = "f323ca9aea67ab3d13b1da00d2ec4768bbef6bd08a1264db7548e6d48b2d6aa3",
      deps = [
          "@com_github_jnr_jnr_constants"
      ],
    # EXCLUDES com.github.jnr:jnr-ffi
  )


  import_external(
      name = "com_github_jnr_jnr_netdb",
      artifact = "com.github.jnr:jnr-netdb:1.1.5",
      artifact_sha256 = "907e66444c109e27ca1b29f323cf66834f823e767fd84ef192f33e31763abcf8",
    # EXCLUDES com.github.jnr:jnr-ffi
  )


  import_external(
      name = "com_github_jnr_jnr_posix",
      artifact = "com.github.jnr:jnr-posix:3.0.23",
      artifact_sha256 = "8d9ec120fe2d3f6d65fcd789e8c450a3047e6e25c9b622afbfad3a3efee20b0f",
      deps = [
          "@com_github_jnr_jnr_constants"
      ],
    # EXCLUDES com.github.jnr:jnr-ffi
  )


  import_external(
      name = "com_github_jnr_jnr_unixsocket",
      artifact = "com.github.jnr:jnr-unixsocket:0.9",
      artifact_sha256 = "0670d023d63120c9e05bb4e02990a71ee0fb6a19184ff5e8681817c8fe03d890",
      deps = [
          "@com_github_jnr_jnr_constants",
          "@com_github_jnr_jnr_enxio",
          "@com_github_jnr_jnr_posix"
      ],
    # EXCLUDES com.github.jnr:jnr-ffi
  )


  import_external(
      name = "com_github_jnr_jnr_x86asm",
      artifact = "com.github.jnr:jnr-x86asm:1.0.2",
      artifact_sha256 = "39f3675b910e6e9b93825f8284bec9f4ad3044cd20a6f7c8ff9e2f8695ebf21e",
    # EXCLUDES com.github.jnr:jnr-ffi
  )
