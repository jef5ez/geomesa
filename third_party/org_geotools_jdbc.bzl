load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_geotools_jdbc_gt_jdbc_h2",
      artifact = "org.geotools.jdbc:gt-jdbc-h2:21.1",
      artifact_sha256 = "298e7291ebcb5249bc5372818cd0bedc4de372f69bdb592f84221fda94c03836",
      deps = [
          "@com_h2database_h2",
          "@org_geotools_gt_jdbc",
          "@org_opengeo_geodb"
      ],
    # EXCLUDES javax.media:jai_core
  )


  import_external(
      name = "org_geotools_jdbc_gt_jdbc_postgis",
      artifact = "org.geotools.jdbc:gt-jdbc-postgis:21.1",
      artifact_sha256 = "ffd058e20312a191523ab88a0f9857d2d5781da398ae628f51acd489e9bd8189",
      deps = [
          "@org_geotools_gt_jdbc",
          "@org_postgresql_postgresql"
      ],
    # EXCLUDES javax.media:jai_core
  )
