load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_hibernate_hibernate_validator",
      artifact = "org.hibernate:hibernate-validator:5.1.3.Final",
      artifact_sha256 = "7f9300345436349396944fc9347437d862f999abd563ebd212291a44ff66e41b",
      deps = [
          "@com_fasterxml_classmate",
          "@javax_validation_validation_api",
          "@org_jboss_logging_jboss_logging"
      ],
  )
