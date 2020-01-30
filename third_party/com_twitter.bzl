load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_twitter_chill_2_11",
      artifact = "com.twitter:chill_2.11:0.8.4",
      deps = [
          "@com_esotericsoftware_kryo_shaded",
          "@com_twitter_chill_java",
          "@org_scala_lang_scala_library"
      ],
  )


  import_external(
      name = "com_twitter_chill_java",
      artifact = "com.twitter:chill-java:0.8.4",
      deps = [
          "@com_esotericsoftware_kryo_shaded"
      ],
  )
