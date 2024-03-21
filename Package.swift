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
            url: "https://sdk.lightstreamer.com/ls-watchos-client/4.3.3/lib/ls-watchos-client-4.3.3.zip", 
            checksum: "fbcb9481678dc228f8c2a567548c6f949c8d40c5b1c87cac1086e8010921b7c8"
        )
    ]
)
