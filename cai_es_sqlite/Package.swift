// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cai_es_sqlite",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.14.1"),
    ],
    targets: [
        .executableTarget(
            name: "cai_es_sqlite",
            dependencies: [
                .product(name: "SQLite", package: "SQLite.swift"),
            ],
            linkerSettings: [
                .linkedLibrary("EndpointSecurity"),
            ]
        ),
        .testTarget(
            name: "cai_es_sqliteTests",
            dependencies: ["cai_es_sqlite"]),
    ]
)
