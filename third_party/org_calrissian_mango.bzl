load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_calrissian_mango_mango_core",
      artifact = "org.calrissian.mango:mango-core:1.2.0",
      artifact_sha256 = "bedce56f121968a197b4c33426781d76ad16bf95cb87f1f10744459757e75fe6",
      deps = [
          "@com_google_guava_guava",
          "@commons_codec_commons_codec",
          "@commons_lang_commons_lang",
          "@commons_net_commons_net"
      ],
  )
