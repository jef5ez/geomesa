load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_jruby_dirgra",
      artifact = "org.jruby:dirgra:0.3",
      artifact_sha256 = "9ee2b48dcdfe0f6261200b81852a3f8c02af702269457c82f485d36d6e078360",
  )


  import_external(
      name = "org_jruby_jruby",
      artifact = "org.jruby:jruby:9.0.4.0",
      artifact_sha256 = "8b086b0cbb46e9c2e7d9979658e3c6c75cda47acb4803e9c7ca31fe090a196ec",
      deps = [
          "@org_jruby_jruby_core",
          "@org_jruby_jruby_stdlib"
      ],
  )


  import_external(
      name = "org_jruby_jruby_core",
      artifact = "org.jruby:jruby-core:9.0.4.0",
      artifact_sha256 = "9a4d74aac7f8ba27eec4c28827e8cd922ac76e99421e06e9e6bd17ebb76e79f0",
      deps = [
          "@com_boundary_high_scale_lib",
          "@com_github_jnr_jffi",
          "@com_github_jnr_jffi_native",
          "@com_github_jnr_jnr_constants",
          "@com_github_jnr_jnr_enxio",
          "@com_github_jnr_jnr_netdb",
          "@com_github_jnr_jnr_posix",
          "@com_github_jnr_jnr_unixsocket",
          "@com_github_jnr_jnr_x86asm",
          "@com_headius_invokebinder",
          "@com_headius_options",
          "@com_jcraft_jzlib",
          "@com_martiansoftware_nailgun_server",
          "@joda_time_joda_time",
          "@org_jruby_dirgra",
          "@org_jruby_extras_bytelist",
          "@org_jruby_jcodings_jcodings",
          "@org_jruby_joni_joni"
      ],
  )


  import_external(
      name = "org_jruby_jruby_stdlib",
      artifact = "org.jruby:jruby-stdlib:9.0.4.0",
      artifact_sha256 = "e7c4342747ea66450888991822b17e2ecfd85d9e35042549afb3bd83219e6b9e",
  )
