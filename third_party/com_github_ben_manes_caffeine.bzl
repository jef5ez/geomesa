load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_github_ben_manes_caffeine_caffeine",
      artifact = "com.github.ben-manes.caffeine:caffeine:2.5.6",
      artifact_sha256 = "7feb3a77b5eaf0cacca642b94480abe72ad529159f6ca234131f8ba0141a13a4",
  )
