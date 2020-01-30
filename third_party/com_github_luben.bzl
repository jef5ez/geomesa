load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_github_luben_zstd_jni",
      artifact = "com.github.luben:zstd-jni:1.3.2-2",
      artifact_sha256 = "4eb1ecb9f1ee2fff1eddecd367b56c9c3c269575de5396dadeed3b67a73f4a3d",
  )
