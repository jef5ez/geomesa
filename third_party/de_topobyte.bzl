load("//:import_external.bzl", import_external = "safe_exodus_maven_import_external")

def dependencies():

  import_external(
      name = "de_topobyte_adt_geo",
      artifact = "de.topobyte:adt-geo:0.0.2",
      artifact_sha256 = "bb3c0083507ec85623ba9cb269a077b0f6318b771e0f206e88343e4ccb0257d8",
  )


  import_external(
      name = "de_topobyte_adt_graph",
      artifact = "de.topobyte:adt-graph:0.0.1",
      artifact_sha256 = "9e7bd9b869149d7170f1891e9d85c8c4c0b0afdfeef052ea46b9ba48b360adc4",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_adt_multicollections",
      artifact = "de.topobyte:adt-multicollections:0.0.3",
      artifact_sha256 = "5435d9815bb6adda8af3282307eb9f42a4d476f6cc638075a380b6c3631ded15",
      deps = [
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_compact_io",
      artifact = "de.topobyte:compact-io:0.0.5",
      artifact_sha256 = "b1b3eccc1340709f8c46a22f619770a23d477a7a71ae45457b6271135ab73961",
  )


  import_external(
      name = "de_topobyte_dynsax",
      artifact = "de.topobyte:dynsax:0.0.1",
      artifact_sha256 = "17b3630ead65c5d22b202ff9cdb2f88b2c26a971908565cab63ec588bbd20e7f",
  )


  import_external(
      name = "de_topobyte_jsi",
      artifact = "de.topobyte:jsi:1.1.0",
      artifact_sha256 = "36aad1145b2bfb5309c86d08fe9de55ff3ff3be2fff0a9a832a8ae735196a488",
      deps = [
          "@net_sf_trove4j_trove4j",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_jts_utils",
      artifact = "de.topobyte:jts-utils:0.0.4",
      artifact_sha256 = "63a630e4aa9d838fc00433a19d3f28fc623faca07e2ff3f0dc831fc0b167303e",
      deps = [
          "@de_topobyte_adt_graph",
          "@de_topobyte_jsi",
          "@net_sf_trove4j_trove4j",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_large_scale_file_io",
      artifact = "de.topobyte:large-scale-file-io:0.0.1",
      artifact_sha256 = "da8ec76dd0b35d85acbb39f4bc32f42fbc50a539b457d617dd0a2c50e000e696",
  )


  import_external(
      name = "de_topobyte_melon_io",
      artifact = "de.topobyte:melon-io:0.0.1",
      artifact_sha256 = "63e9a877e7f264c4aa920110a110391c78ef139b54e476f75a22feb61190850a",
  )


  import_external(
      name = "de_topobyte_osm4j_core",
      artifact = "de.topobyte:osm4j-core:0.0.18",
      artifact_sha256 = "6ad39c6883f80dc9ecb2b6721ffbd86c1ae4f9f58367daeb18db7ccb542dd89f",
      deps = [
          "@de_topobyte_adt_multicollections",
          "@net_sf_trove4j_trove4j",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_osm4j_geometry",
      artifact = "de.topobyte:osm4j-geometry:0.0.14",
      artifact_sha256 = "3b14417658608126127565b3d42f30bf6815b06b98d6e17a07f9091dd815d5cd",
      deps = [
          "@de_topobyte_jts_utils",
          "@de_topobyte_osm4j_core",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_osm4j_pbf",
      artifact = "de.topobyte:osm4j-pbf:0.0.7",
      artifact_sha256 = "65f71741a11e85d459e1bc525525de6bcc27a29b7c665ab5f4bd0937fd748338",
      deps = [
          "@com_google_protobuf_protobuf_java",
          "@de_topobyte_osm4j_core",
          "@net_jpountz_lz4_lz4",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
    # EXCLUDES de.topobyte:commons-cli-helper
  )


  import_external(
      name = "de_topobyte_osm4j_tbo",
      artifact = "de.topobyte:osm4j-tbo:0.0.9",
      artifact_sha256 = "89d195126e6549b7b9edfb7ddc7a873806f666a13a05a264912ff0fb2b124be9",
      deps = [
          "@de_topobyte_compact_io",
          "@de_topobyte_osm4j_core",
          "@net_jpountz_lz4_lz4",
          "@org_apache_commons_commons_lang3",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )


  import_external(
      name = "de_topobyte_osm4j_utils",
      artifact = "de.topobyte:osm4j-utils:0.0.22",
      artifact_sha256 = "a3b6fec83dbd23bd86fab93d4d665f5dbe8a10ef91adb549897dd9d0677e5564",
      deps = [
          "@com_google_guava_guava",
          "@de_topobyte_adt_geo",
          "@de_topobyte_large_scale_file_io",
          "@de_topobyte_melon_io",
          "@de_topobyte_osm4j_core",
          "@de_topobyte_osm4j_geometry",
          "@de_topobyte_osm4j_pbf",
          "@de_topobyte_osm4j_tbo",
          "@de_topobyte_osm4j_xml",
          "@org_apache_commons_commons_compress",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
    # EXCLUDES de.topobyte:commons-cli-helper
    # EXCLUDES com.vividsolutions:jts
  )


  import_external(
      name = "de_topobyte_osm4j_xml",
      artifact = "de.topobyte:osm4j-xml:0.0.3",
      artifact_sha256 = "21e60956a4e43168cfb165f37485a9618428fb8b9013cdd58e721559be8178d1",
      deps = [
          "@de_topobyte_dynsax",
          "@de_topobyte_osm4j_core",
          "@joda_time_joda_time",
          "@org_apache_commons_commons_lang3",
          "@org_slf4j_slf4j_api"
      ],
      runtime_deps = [
          "@log4j_log4j",
          "@org_slf4j_slf4j_log4j12"
      ],
  )
