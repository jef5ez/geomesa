load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_eclipse_emf_org_eclipse_emf_common",
      artifact = "org.eclipse.emf:org.eclipse.emf.common:2.15.0",
      artifact_sha256 = "bdb51f83b2daa51446b4ae5d606464e4b22fb7ef98f0477ac95de72551e2978a",
  )


  import_external(
      name = "org_eclipse_emf_org_eclipse_emf_ecore",
      artifact = "org.eclipse.emf:org.eclipse.emf.ecore:2.15.0",
      artifact_sha256 = "d5e3c25344fe27f14f514f5d6deb6e9cc3f6153fa462361261a8d49a3dfe9bbf",
      deps = [
          "@org_eclipse_emf_org_eclipse_emf_common"
      ],
  )


  import_external(
      name = "org_eclipse_emf_org_eclipse_emf_ecore_xmi",
      artifact = "org.eclipse.emf:org.eclipse.emf.ecore.xmi:2.15.0",
      artifact_sha256 = "712ff33fef916d2fa4d838992fccae85c4817a71639a9a5933fc44568ed6dc57",
      deps = [
          "@org_eclipse_emf_org_eclipse_emf_ecore"
      ],
  )
