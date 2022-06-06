// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Focus",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(name: "AppEntry", targets: ["AppEntry"]),
        .library(name: "Model", targets: ["Model"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "0.36.0"),
    ],
    targets: [
        .target(name: "AppEntry", dependencies: [
            "Model",
            .product(name: "ComposableArchitecture", package: "swift-composable-architecture")]),
        .target(name: "Model", dependencies: [],
               resources: [
                .process("Model.xcdatamodeld")
               ]
            )
    ]
)
