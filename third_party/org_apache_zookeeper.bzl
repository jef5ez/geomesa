load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_zookeeper_zookeeper",
      artifact = "org.apache.zookeeper:zookeeper:3.4.10",
      artifact_sha256 = "caa38ce6b2f52c59c10b80f89abb544cc4279257805fc0c969010cbab1a11079",
      deps = [
          "@jline_jline",
          "@log4j_log4j",
          "@org_slf4j_slf4j_api",
          "@org_slf4j_slf4j_log4j12"
      ],
    # EXCLUDES io.netty:netty
    # EXCLUDES org.jboss.netty:netty
    # EXCLUDES com.sun.jdmk:jmxtools
    # EXCLUDES com.sun.jmx:jmxri
    # EXCLUDES javax.jms:jms
      neverlink = 1,
      generated_linkable_rule_name = "linkable",
  )
