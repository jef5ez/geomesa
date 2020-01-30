load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_jxpath_commons_jxpath",
      artifact = "commons-jxpath:commons-jxpath:1.3",
      artifact_sha256 = "fcbc0ad917d9d6a73c6df21fac322e00d213ef19cd94815a007c407a8a3ff449",
    # EXCLUDES xerces:xerces
    # EXCLUDES servletapi:servletapi
    # EXCLUDES junit:junit
  )
