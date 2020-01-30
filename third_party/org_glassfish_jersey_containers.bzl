load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_glassfish_jersey_containers_jersey_container_servlet",
      artifact = "org.glassfish.jersey.containers:jersey-container-servlet:2.22.2",
      artifact_sha256 = "24567da42f73047d6f302b1bcafc552e8fddf6219f07cc72774eaac4a56d57e7",
      deps = [
          "@javax_ws_rs_javax_ws_rs_api",
          "@org_glassfish_jersey_containers_jersey_container_servlet_core",
          "@org_glassfish_jersey_core_jersey_common",
          "@org_glassfish_jersey_core_jersey_server"
      ],
  )


  import_external(
      name = "org_glassfish_jersey_containers_jersey_container_servlet_core",
      artifact = "org.glassfish.jersey.containers:jersey-container-servlet-core:2.22.2",
      artifact_sha256 = "7d5ef749aeafd22f25bf06b479be92201b34e8aa8e9ad4dbee69bbcf4dc1ce07",
      deps = [
          "@javax_ws_rs_javax_ws_rs_api",
          "@org_glassfish_hk2_external_javax_inject",
          "@org_glassfish_jersey_core_jersey_common",
          "@org_glassfish_jersey_core_jersey_server"
      ],
  )
