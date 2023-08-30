// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rt",
    platforms: [
        .macOS(.v13)
    ],
    targets: [
        .executableTarget(
            name: "rt",
            path: "Sources",
            linkerSettings: [
                .linkedLibrary("EndpointSecurity")
            ]
        ),
    ]
)
