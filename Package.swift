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
                      checksum: "dd884d18e49fd46a4df2757b57b3862003b8bf12bd792459bef20e68ccacb9d5"),
    ]
)
