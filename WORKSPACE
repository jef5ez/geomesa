
workspace(name = "jef5ez_geomesa")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl","git_repository")

git_repository(
    name = "rules_jvm_test_discovery",
    remote = "git@github.com:wix-incubator/rules_jvm_test_discovery.git",
    commit = "4c1adcca5f0347704ddb6b16a7c7ad6e0e19ae29"
)

load("@rules_jvm_test_discovery//:junit.bzl", "junit_repositories")
junit_repositories()
      

load("//:third_party.bzl", "third_party_dependencies")

third_party_dependencies()

load(":junit5.bzl", "junit_jupiter_java_repositories", "junit_platform_java_repositories")

JUNIT_JUPITER_VERSION = "5.4.2"

JUNIT_PLATFORM_VERSION = "1.4.2"

junit_jupiter_java_repositories(
    version = JUNIT_JUPITER_VERSION,
)

junit_platform_java_repositories(
    version = JUNIT_PLATFORM_VERSION,
)
      
# bazel-skylib 0.8.0 released 2019.03.20 (https://github.com/bazelbuild/bazel-skylib/releases/tag/0.8.0)
skylib_version = "0.8.0"
http_archive(
    name = "bazel_skylib",
    type = "tar.gz",
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{}/bazel-skylib.{}.tar.gz".format (skylib_version, skylib_version),
    sha256 = "2ef429f5d7ce7111263289644d233707dba35e39696377ebab8b0bc701f7818e",
)

rules_scala_version="0f89c210ade8f4320017daf718a61de3c1ac4773" # update this as needed
rules_scala_version_sha256="37eb013ea3e6a940da70df43fe2dd6f423d1ac0849042aa586f9ac157321018d"
http_archive(
    name = "io_bazel_rules_scala",
    url = "https://github.com/bazelbuild/rules_scala/archive/%s.zip"%rules_scala_version,
    type = "zip",
    strip_prefix= "rules_scala-%s" % rules_scala_version,
    sha256 = rules_scala_version_sha256,
)

load("@io_bazel_rules_scala//scala:scala.bzl", "scala_repositories")
scala_repositories()

load("@io_bazel_rules_scala//scala:toolchains.bzl", "scala_register_toolchains")
scala_register_toolchains()


