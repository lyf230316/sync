// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "spm_test",
    platforms: [.macOS(.v12)],
    dependencies: [
        .package(url:"https://github.com/jpsim/SourceKitten.git", from: "0.34.1"),
    ],
    targets: [
        .executableTarget(
            name: "spm_test",
            dependencies: [
                .product(name: "SourceKittenFramework", package: "SourceKitten"),
            ]),
        .testTarget(
            name: "spm_testTests",
            dependencies: ["spm_test"]),
    ]
)
