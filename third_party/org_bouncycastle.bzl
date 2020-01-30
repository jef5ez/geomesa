load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_bouncycastle_bcpkix_jdk15on",
      artifact = "org.bouncycastle:bcpkix-jdk15on:1.54",
      artifact_sha256 = "d618dcfbf0337b91015b21d4b398175ae96382a82c7e1d6e8c657fcd236463c7",
      deps = [
          "@org_bouncycastle_bcprov_jdk15on"
      ],
  )


  import_external(
      name = "org_bouncycastle_bcprov_jdk15on",
      artifact = "org.bouncycastle:bcprov-jdk15on:1.54",
      artifact_sha256 = "d0ae14598f9c528d2ab7bb8ed00e785a5440f692712cd362d69328aba25efb57",
  )
