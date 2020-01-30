load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "org_apache_xml_xml_commons_resolver",
      artifact = "org.apache.xml:xml-commons-resolver:1.2",
      artifact_sha256 = "47dcde8986019314ef78ae7280a94973a21d2ed95075a40a000b42da956429e1",
  )
