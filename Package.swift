// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TStyle",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "TStyle",
            targets: ["TStyle"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TStyle"),
        .testTarget(
            name: "TStyleTests",
            dependencies: ["TStyle"]),
    ],
    swiftLanguageVersions: [.v5]
)
