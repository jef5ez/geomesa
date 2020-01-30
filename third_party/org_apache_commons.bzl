load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_commons_commons_compress",
      artifact = "org.apache.commons:commons-compress:1.18",
      artifact_sha256 = "5f2df1e467825e4cac5996d44890c4201c000b43c0b23cffc0782d28a0beb9b0",
  )


  import_external(
      name = "org_apache_commons_commons_crypto",
      artifact = "org.apache.commons:commons-crypto:1.0.0",
      artifact_sha256 = "0043d8d74d8df632c57f938828e6f6efd555e293a9079dcdf59eab8e40107491",
    # EXCLUDES net.java.dev.jna:jna
  )


  import_external(
      name = "org_apache_commons_commons_csv",
      artifact = "org.apache.commons:commons-csv:1.5",
      artifact_sha256 = "f0acb4058efe4616ea631b5119f59ef21fe43843f4e399455521e984e8df99e5",
  )


  import_external(
      name = "org_apache_commons_commons_dbcp2",
      artifact = "org.apache.commons:commons-dbcp2:2.6.0",
      artifact_sha256 = "4af3d49ea0aae838d330cbc969a94ff2fa768e3b637effb8e80a21672dd49bf4",
      deps = [
          "@org_apache_commons_commons_pool2"
      ],
    # EXCLUDES commons-logging:commons-logging
  )


  import_external(
      name = "org_apache_commons_commons_lang3",
      artifact = "org.apache.commons:commons-lang3:3.7",
      artifact_sha256 = "6e8dc31e046508d9953c96534edf0c2e0bfe6f468966b5b842b3f87e43b6a847",
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )


  import_external(
      name = "org_apache_commons_commons_math",
      artifact = "org.apache.commons:commons-math:2.2",
      artifact_sha256 = "15993bb2a3cf50f3291b40fc980a3166a0984e7b5f1abbe5232151fd94954584",
  )


  import_external(
      name = "org_apache_commons_commons_math3",
      artifact = "org.apache.commons:commons-math3:3.4.1",
  )


  import_external(
      name = "org_apache_commons_commons_pool2",
      artifact = "org.apache.commons:commons-pool2:2.6.1",
      artifact_sha256 = "e2d6f4084f8a180de66c7700343fe8ad3a0aa84f2cb0561edb417fe1fd41aa15",
  )


  import_external(
      name = "org_apache_commons_commons_text",
      artifact = "org.apache.commons:commons-text:1.4",
      artifact_sha256 = "d624e443240a5fccc93edbfe758df1b69c07d7eaab6fc5e8f98f77d86ced8259",
      deps = [
          "@org_apache_commons_commons_lang3"
      ],
  )


  import_external(
      name = "org_apache_commons_commons_vfs2",
      artifact = "org.apache.commons:commons-vfs2:2.1",
      artifact_sha256 = "4fe72e0ae7dac78fd7fb1b1684144c88f60fb4b7f0090516b42894ac6ff8ccc2",
      deps = [
          "@commons_logging_commons_logging"
      ],
  )
