// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Please",
    products: [
        .library(
            name: "Please",
            targets: ["Please"]),
    ],
    targets: [
        .target(
            name: "Please", dependencies: []),
        .testTarget(
            name: "PleaseTests",
            dependencies: ["Please"]),
    ]
)
