load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_mina_mina_core",
      artifact = "org.apache.mina:mina-core:2.0.7",
      artifact_sha256 = "fb2c9953ab2f8a4aee38b768c0615e2917db65106fd6466133ea12ac05be7f69",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )
