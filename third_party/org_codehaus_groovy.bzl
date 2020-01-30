load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_codehaus_groovy_groovy",
      artifact = "org.codehaus.groovy:groovy:2.4.5",
      artifact_sha256 = "111cc62b985c767d7ccb2248a2257153c9952af50de7ffa13883b1ff808ea223",
  )


  import_external(
      name = "org_codehaus_groovy_groovy_jsr223",
      artifact = "org.codehaus.groovy:groovy-jsr223:2.4.5",
      artifact_sha256 = "d7ada7c83da2789c57f8cedf94c59d43be2f98d609d878e6f1c2036af6bc0418",
      deps = [
          "@org_codehaus_groovy_groovy"
      ],
  )
