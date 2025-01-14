// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PusherSwiftWithEncryption",
    products: [
        .library(name: "PusherSwiftWithEncryption", targets: ["PusherSwiftWithEncryption"])
    ],
    dependencies: [
        .package(url: "https://github.com/ashleymills/Reachability.swift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/daltoniam/Starscream.git", .upToNextMajor(from: "3.1.0")),
        .package(url: "https://github.com/kwiadmin/swift-sodium", .branch("mpos-25674"))
    ],
    targets: [
        .target(
            name: "PusherSwiftWithEncryption",
            dependencies: ["Reachability", "Starscream", "Sodium"]
        )
    ],
    swiftLanguageVersions: [.v5]
)
