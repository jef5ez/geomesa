load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "com_googlecode_cqengine_cqengine",
      artifact = "com.googlecode.cqengine:cqengine:3.0.0",
      artifact_sha256 = "320aef9e2768fe96c0c6ad19766588b7681e64037176b467a6249a7e08f238bb",
      deps = [
          "@com_googlecode_concurrent_trees_concurrent_trees",
          "@net_jodah_typetools",
          "@org_antlr_antlr4_runtime"
      ],
    # EXCLUDES com.esotericsoftware:kryo
    # EXCLUDES org.javassist:javassist
    # EXCLUDES de.javakaffee:kryo-serializers
    # EXCLUDES org.xerial:sqlite-jdbc
    # EXCLUDES com.esotericsoftware.kryo:kryo
  )
