load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "commons_httpclient_commons_httpclient",
      artifact = "commons-httpclient:commons-httpclient:3.1",
      artifact_sha256 = "dbd4953d013e10e7c1cc3701a3e6ccd8c950c892f08d804fabfac21705930443",
      deps = [
          "@commons_codec_commons_codec",
          "@commons_logging_commons_logging"
      ],
  )
