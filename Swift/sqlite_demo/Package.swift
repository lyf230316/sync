// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sqlite_demo",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Swift-Kuery-SQLite.git", from: "2.0.0")
    ],
    targets: [
        .executableTarget(
            name: "sqlite_demo",
            dependencies: [
                .product(name: "SwiftKuerySQLite", package: "Swift-Kuery-SQLite")
            ]),
        .testTarget(
            name: "sqlite_demoTests",
            dependencies: ["sqlite_demo"]),
    ]
)
