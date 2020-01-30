load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_metamodel_MetaModel_core",
      artifact = "org.apache.metamodel:MetaModel-core:4.3.6",
      artifact_sha256 = "a689d0abea88d1659e8cd7ee7327616404bcd895d95b808480c7d8b3b7e5e095",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
  )


  import_external(
      name = "org_apache_metamodel_MetaModel_pojo",
      artifact = "org.apache.metamodel:MetaModel-pojo:4.3.6",
      artifact_sha256 = "df27a8e1dd5dee33010cea5171e91ff9d53854c0074100b9cbe61c4004652190",
      deps = [
          "@org_apache_metamodel_MetaModel_core"
      ],
  )
