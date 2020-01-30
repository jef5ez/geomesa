load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_springframework_security_spring_security_core",
      artifact = "org.springframework.security:spring-security-core:5.1.1.RELEASE",
      artifact_sha256 = "4dacec33467cffcd26da96b33316c0ce1439e059e4a16ed45434e6d4dbc982d4",
      deps = [
          "@org_springframework_spring_aop",
          "@org_springframework_spring_beans",
          "@org_springframework_spring_context",
          "@org_springframework_spring_core",
          "@org_springframework_spring_expression"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_springframework_security_spring_security_web",
      artifact = "org.springframework.security:spring-security-web:5.1.1.RELEASE",
      artifact_sha256 = "bdadf71d955bb6d57760f879611499f087f42aa35a396082fdbeea4d6dfc7e0d",
      deps = [
          "@org_springframework_security_spring_security_core",
          "@org_springframework_spring_aop",
          "@org_springframework_spring_beans",
          "@org_springframework_spring_context",
          "@org_springframework_spring_core",
          "@org_springframework_spring_expression",
          "@org_springframework_spring_web"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
