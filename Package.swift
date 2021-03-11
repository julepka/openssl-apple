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
                      url:"https://github.com/julepka/openssl-apple/releases/download/1.1.1080202/openssl-static-xcframework.zip",
                      // Run from package directory:
                      // $swift package compute-checksum output/openssl-static-xcframework.zip
                      checksum: "77b9a36297a2cade7bb6db5282570740a2af7b1e5083f126f46ca2671b14d73e"),
    ]
)
