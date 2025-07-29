load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(    
    name = "embag",
    include_prefix = "embag",
    strip_include_prefix = "src",
    srcs = glob(["src/*.cc"]),
    hdrs = glob(["src/*.h", "src/*.hpp"]),
    visibility = ["//visibility:public"],
    deps = [
        "@boost.fusion//:boost.fusion",
        "@boost.iostreams//:boost.iostreams",
        "@boost.spirit//:boost.spirit",
        "@boost.variant//:boost.variant",
        "@bzip2//:bz2",
        "@lz4//:lz4_frame",
    ],
)
