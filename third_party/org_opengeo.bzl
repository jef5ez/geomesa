load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_opengeo_geodb",
      artifact = "org.opengeo:geodb:0.9",
      artifact_sha256 = "661f4100005e7d3537b2e3f9b6c0c01d0a64c41644f57fdd0fcfdb89d2a7217e",
      deps = [
          "@net_sourceforge_hatbox_hatbox"
      ],
    # EXCLUDES com.h2database:h2
    # EXCLUDES org.locationtech.jts:jts-core
  )
