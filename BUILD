load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(    
    name = "embag",
    include_prefix = "embag",
    strip_include_prefix = "src",
    srcs = glob(["src/*.cc"]),
    hdrs = glob(["src/*.h", "src/*.hpp"]),
    # This is required to build in the manylinux image
    linkopts = [
        "-lstdc++",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@boost//:fusion",
        "@boost//:iostreams",
        "@boost//:spirit",
        "@boost//:variant",
        "@libbz2//:bz2",
        "@liblz4//:lz4_frame",
    ],
)
