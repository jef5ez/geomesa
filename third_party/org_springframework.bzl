load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_springframework_spring_aop",
      artifact = "org.springframework:spring-aop:5.1.1.RELEASE",
      artifact_sha256 = "c2d29f3eaa35678c32a9877c055349ae4a9ecdc57e31c579a0c1f60856aa4d9a",
      deps = [
          "@org_springframework_spring_beans",
          "@org_springframework_spring_core"
      ],
  )


  import_external(
      name = "org_springframework_spring_beans",
      artifact = "org.springframework:spring-beans:5.1.1.RELEASE",
      artifact_sha256 = "57d7094cf81d5fb11acf68f8b103dd125159b4eab9c85438d61e56c237c8b759",
      deps = [
          "@org_springframework_spring_core"
      ],
  )


  import_external(
      name = "org_springframework_spring_context",
      artifact = "org.springframework:spring-context:5.1.1.RELEASE",
      artifact_sha256 = "45a1e13afb16e281ba19f8bf6edf7f8b70b31cd11e49dfc8cff73c0be69a7bb9",
      deps = [
          "@org_springframework_spring_aop",
          "@org_springframework_spring_beans",
          "@org_springframework_spring_core",
          "@org_springframework_spring_expression"
      ],
  )


  import_external(
      name = "org_springframework_spring_core",
      artifact = "org.springframework:spring-core:5.1.1.RELEASE",
      artifact_sha256 = "8b09c4eba43c7ef0bc3ace9601b39509dbc083f75a658d941d8703eb89287e3c",
      deps = [
          "@org_springframework_spring_jcl"
      ],
    # EXCLUDES commons-logging:commons-logging
  )


  import_external(
      name = "org_springframework_spring_expression",
      artifact = "org.springframework:spring-expression:5.1.1.RELEASE",
      artifact_sha256 = "b6e7f124ddcc4b0d36a856dbdc7326d4afd0ec5b5244b4c57ab3c68c27836c80",
      deps = [
          "@org_springframework_spring_core"
      ],
  )


  import_external(
      name = "org_springframework_spring_jcl",
      artifact = "org.springframework:spring-jcl:5.1.1.RELEASE",
      artifact_sha256 = "54939b77afc02e1508210ba7f688861028b0adc757fc6f93be6abe61b90e9c15",
  )


  import_external(
      name = "org_springframework_spring_web",
      artifact = "org.springframework:spring-web:4.3.18.RELEASE",
      artifact_sha256 = "a75e220d939132cb0c84b756ce577b148e714bd6d42a12647f7f41c2107c74ea",
      deps = [
          "@org_springframework_spring_aop",
          "@org_springframework_spring_beans",
          "@org_springframework_spring_context",
          "@org_springframework_spring_core"
      ],
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
