// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cai_es",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "swr", targets: ["swr"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .executableTarget(
            name: "cai_es",
            dependencies: [
                "swr"
            ],
            linkerSettings: [
                .linkedLibrary("EndpointSecurity"),
            ]
        ),
        .target(name: "swr")
    ]
)
