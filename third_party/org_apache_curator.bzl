load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_curator_curator_client",
      artifact = "org.apache.curator:curator-client:2.6.0",
      deps = [
          "@com_google_guava_guava",
          "@org_apache_zookeeper_zookeeper",
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_curator_curator_framework",
      artifact = "org.apache.curator:curator-framework:4.0.1",
      artifact_sha256 = "a847d0193f61450684703a04ec923460a90053aec5cf3c20746f2283a37d669c",
      deps = [
          "@org_apache_curator_curator_client"
      ],
  )


  import_external(
      name = "org_apache_curator_curator_recipes",
      artifact = "org.apache.curator:curator-recipes:4.0.1",
      artifact_sha256 = "1346eb637d1137def0c35dd6856c453fd3ed1c6f709d065b1bf3b9ca597b2df2",
      deps = [
          "@org_apache_curator_curator_framework"
      ],
  )


  import_external(
      name = "org_apache_curator_curator_test",
      artifact = "org.apache.curator:curator-test:2.7.1",
      artifact_sha256 = "e955772e53448ecec3450da0e43097e8fe3f1e684eed4617453ff42b76fa75b5",
      deps = [
          "@com_google_guava_guava",
          "@org_apache_commons_commons_math",
          "@org_apache_zookeeper_zookeeper",
          "@org_javassist_javassist"
      ],
  )
