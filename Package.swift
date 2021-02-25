// swift-tools-version:5.3
//
// Copyright (c) Lightstreamer Srl
// See LICENSE.md for license terms
//

import PackageDescription

let package = Package(
    name: "Lightstreamer_watchOS_Client",
    platforms: [
        .watchOS("2.0")
    ],
    products: [
        .library(
            name: "Lightstreamer_watchOS_Client", 
            targets: ["Lightstreamer_watchOS_Client_Wrapper"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Lightstreamer_watchOS_Client_Wrapper",
            dependencies: [
                .target(name: "Lightstreamer_watchOS_Client")
            ],
            path: "Sources",
            linkerSettings: [
                .linkedLibrary("iconv"),
                .linkedFramework("Security")
            ]
        ),
        .binaryTarget(
            name: "Lightstreamer_watchOS_Client", 
            url: "https://www.lightstreamer.com/repo/cocoapods/ls-watchos-client/4.3.1/ls-watchos-client-4.3.1.zip", 
            checksum: "fcc098bd4d0685bdea172aa45ab5198c3fe3829a88b2ec5bb527ba715587d277"
        )
    ]
)
