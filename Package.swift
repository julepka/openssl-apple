// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cl-openssl",
    products: [
        .library(
            name: "cl-openssl",
            targets: ["openssl"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "openssl",
                      // update version in URL path
                      url:"https://github.com/cossacklabs/openssl-apple/releases/download/1.1.10803/openssl-static-xcframework.zip",
                      // Run from package directory:
                      // swift package compute-checksum output/openssl-static-xcframework.zip
                      checksum: "4e03d2d4d5ee25216dc6353dc3d3336a23ee7191533fe9951ad607510b758a3b"),
    ]
)
