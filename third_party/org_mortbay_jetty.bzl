load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_mortbay_jetty_jetty",
      artifact = "org.mortbay.jetty:jetty:6.1.26",
      artifact_sha256 = "21091d3a9c1349f640fdc421504a604c040ed89087ecc12afbe32353326ed4e5",
      deps = [
          "@org_mortbay_jetty_jetty_util",
          "@org_mortbay_jetty_servlet_api"
      ],
  )


  import_external(
      name = "org_mortbay_jetty_jetty_sslengine",
      artifact = "org.mortbay.jetty:jetty-sslengine:6.1.26",
      artifact_sha256 = "9c5f6bb168ba01b95d250b57f061c8094e1ce9c89ae4e773492bacb17192ea87",
      deps = [
          "@org_mortbay_jetty_jetty"
      ],
  )


  import_external(
      name = "org_mortbay_jetty_jetty_util",
      artifact = "org.mortbay.jetty:jetty-util:6.1.26",
      artifact_sha256 = "9b974ce2b99f48254b76126337dc45b21226f383aaed616f59780adaf167c047",
  )


  import_external(
      name = "org_mortbay_jetty_jsp_2_1",
      artifact = "org.mortbay.jetty:jsp-2.1:6.1.14",
      artifact_sha256 = "d954dad8aa71f2699f3590333e8c9b8d8fc1ea2c59d76035193b8ff2af05d63f",
      deps = [
          "@org_mortbay_jetty_jsp_api_2_1"
      ],
    # EXCLUDES org.eclipse.jdt:core
    # EXCLUDES ant:ant
  )


  import_external(
      name = "org_mortbay_jetty_jsp_api_2_1",
      artifact = "org.mortbay.jetty:jsp-api-2.1:6.1.14",
      artifact_sha256 = "dbe60706e1a2f3e3e3785b287d78b527b6f41aa637eccda4e3c384176c35a405",
      deps = [
          "@org_mortbay_jetty_servlet_api_2_5"
      ],
  )


  import_external(
      name = "org_mortbay_jetty_servlet_api",
      artifact = "org.mortbay.jetty:servlet-api:2.5-20081211",
      artifact_sha256 = "068756096996fe00f604ac3b6672d6f663dc777ea4a83056e240d0456e77e472",
  )


  import_external(
      name = "org_mortbay_jetty_servlet_api_2_5",
      artifact = "org.mortbay.jetty:servlet-api-2.5:6.1.14",
      artifact_sha256 = "0ed33ee3051866a3a6331976cdf5098a36aefd16ec1fa2d836eb067e37d46d47",
  )
