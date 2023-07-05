// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "cai_es",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(name: "CaiES", targets: ["CaiES"]),
        .library(name: "swr", targets: ["swr"]),
        .executable(name: "cai_es", targets: ["cai_es"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .executableTarget(
            name: "cai_es",
            dependencies: [
                "swr",
            ],
            linkerSettings: [
                .linkedLibrary("EndpointSecurity"),
            ]
        ),
        .executableTarget(
            name: "CaiES",
            dependencies: [
                "swr",
            ],
            linkerSettings: [
                .linkedLibrary("EndpointSecurity"),
            ]
        ),
        .target(
            name: "swr"
        )
    ]
)
