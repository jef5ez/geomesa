load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_eclipse_jetty_jetty_annotations",
      artifact = "org.eclipse.jetty:jetty-annotations:9.4.12.v20180830",
      artifact_sha256 = "94adf4eae36b575b8af0fb58b19a68762ade2b179313c02de6c11d00464a8d6e",
      deps = [
          "@javax_annotation_javax_annotation_api",
          "@org_eclipse_jetty_jetty_plus",
          "@org_eclipse_jetty_jetty_webapp",
          "@org_ow2_asm_asm",
          "@org_ow2_asm_asm_commons"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_client",
      artifact = "org.eclipse.jetty:jetty-client:9.4.12.v20180830",
      artifact_sha256 = "62efbbfda88cd4f7644242c4b4df8f3b0a671bfeafea7682dabe00352ba07db7",
      deps = [
          "@org_eclipse_jetty_jetty_http",
          "@org_eclipse_jetty_jetty_io"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_continuation",
      artifact = "org.eclipse.jetty:jetty-continuation:9.4.12.v20180830",
      artifact_sha256 = "d152ecac457b35fbb1e5dec31cb72161f53b77d17021cdf5f0a28ebfb074bb74",
  )


  import_external(
      name = "org_eclipse_jetty_jetty_http",
      artifact = "org.eclipse.jetty:jetty-http:9.2.17.v20160517",
      artifact_sha256 = "a4c643d8e92d3cd0d04d6816ee8e81403ed88beea0011c7c5cd14192c13a1617",
      deps = [
          "@org_eclipse_jetty_jetty_util"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_io",
      artifact = "org.eclipse.jetty:jetty-io:9.2.17.v20160517",
      artifact_sha256 = "9622e3660518a7c393a04f4c0abcfc2af5a69d60bf16794e2f84f021aa435e4d",
      deps = [
          "@org_eclipse_jetty_jetty_util"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_jaas",
      artifact = "org.eclipse.jetty:jetty-jaas:9.4.12.v20180830",
      artifact_sha256 = "bb3f860ffef60c73acf368c6b1671ad761a2ee19ee74474baec69588f5ee4f01",
      deps = [
          "@org_eclipse_jetty_jetty_security"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_jmx",
      artifact = "org.eclipse.jetty:jetty-jmx:9.4.12.v20180830",
      artifact_sha256 = "a3510a25dd0dd264a2d7043a8abcd66f815f979957b7b0954af8889a513210e6",
      deps = [
          "@org_eclipse_jetty_jetty_util"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_jndi",
      artifact = "org.eclipse.jetty:jetty-jndi:9.4.12.v20180830",
      artifact_sha256 = "69472c7b0f751ce5b6e5f2348d89eb8d9de661b9ce52fa49db4efbfee5232a4f",
      deps = [
          "@org_eclipse_jetty_jetty_util"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_plus",
      artifact = "org.eclipse.jetty:jetty-plus:9.4.12.v20180830",
      artifact_sha256 = "68e5aa86cf876a5488ad85bd3988fe292570e67af333e78340f75e036662334d",
      deps = [
          "@org_eclipse_jetty_jetty_jndi",
          "@org_eclipse_jetty_jetty_webapp"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_security",
      artifact = "org.eclipse.jetty:jetty-security:9.2.17.v20160517",
      artifact_sha256 = "6658e3ef346565709a59483a221df585c8243ad1d0f87611a369ec98ad1e4ded",
      deps = [
          "@org_eclipse_jetty_jetty_server"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_server",
      artifact = "org.eclipse.jetty:jetty-server:9.2.17.v20160517",
      artifact_sha256 = "e6bd6ca4464508ae9c6cc2e915e5f7b5bc6848e2b09cd54fa632b15d96924d24",
      deps = [
          "@javax_servlet_javax_servlet_api//:linkable",
          "@org_eclipse_jetty_jetty_http",
          "@org_eclipse_jetty_jetty_io"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_servlet",
      artifact = "org.eclipse.jetty:jetty-servlet:9.4.12.v20180830",
      artifact_sha256 = "7310d4cccf8abf27fde0c3f1a32e19c75fe33c6f1ab558f0704d915f0f01cb07",
      deps = [
          "@org_eclipse_jetty_jetty_security"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_servlets",
      artifact = "org.eclipse.jetty:jetty-servlets:9.4.12.v20180830",
      artifact_sha256 = "6cb8989b0977f4cb4b216c95e63ad6edcbe8aeead204c226c4f172a1c10e97d3",
      deps = [
          "@org_eclipse_jetty_jetty_continuation",
          "@org_eclipse_jetty_jetty_http",
          "@org_eclipse_jetty_jetty_io",
          "@org_eclipse_jetty_jetty_util"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_util",
      artifact = "org.eclipse.jetty:jetty-util:9.2.17.v20160517",
      artifact_sha256 = "526475a65b353fb97b849e13dd76bc6ee5f7498266e594f31cc6930922b76842",
  )


  import_external(
      name = "org_eclipse_jetty_jetty_webapp",
      artifact = "org.eclipse.jetty:jetty-webapp:9.4.6.v20170531",
      artifact_sha256 = "67e15f3681ba136cca49710b67c45a3834fed247eab8959082e2d145831380ce",
      deps = [
          "@org_eclipse_jetty_jetty_servlet",
          "@org_eclipse_jetty_jetty_xml"
      ],
  )


  import_external(
      name = "org_eclipse_jetty_jetty_xml",
      artifact = "org.eclipse.jetty:jetty-xml:9.4.6.v20170531",
      artifact_sha256 = "73a6460c8f856cadeb4f9b2469532b9ac2a5f9de2b6cdefe81aabd73a5a89a6d",
      deps = [
          "@org_eclipse_jetty_jetty_util"
      ],
  )
