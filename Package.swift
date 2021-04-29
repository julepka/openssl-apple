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
                      url:"https://github.com/cossacklabs/openssl-apple/releases/download/1.1.11101/openssl-static-xcframework.zip",
                      // Run from package directory:
                      // swift package compute-checksum output/openssl-static-xcframework.zip
                      checksum: "ea9c1a3fa59a51c13a811f4f11ada330d9e3993c3bc225db102127595e2d97ba"),
    ]
)
