load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_easymock_easymock",
      artifact = "org.easymock:easymock:3.4",
      artifact_sha256 = "ce2885cabe0d2c44d99d405796f9b1e248b76a6106863ad6a236bd4bcc311e19",
      deps = [
          "@org_objenesis_objenesis"
      ],
  )
