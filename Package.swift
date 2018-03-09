// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCohesionAnalyzer",
    products: [
        .executable(
            name: "SwiftCohesionAnalyzer",
            targets: ["SwiftCohesionAnalyzer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jpsim/SourceKitten.git", .upToNextMajor(from: "0.19.1")),
        .package(url: "https://github.com/kylef/Commander.git", .upToNextMajor(from: "0.8.0")),
        .package(url: "https://github.com/xcodeswift/xcproj.git", .upToNextMajor(from: "4.1.0")),
    ],
    targets: [
        .target(
            name: "SwiftCohesionAnalyzer",
            dependencies: ["SwiftCohesionAnalyzerCore", "Commander"]),
        .target(
            name: "SwiftCohesionAnalyzerCore",
            dependencies: ["SourceKittenFramework", "xcproj"]),
        .testTarget(
            name: "SwiftCohesionAnalyzerTests",
            dependencies: ["SwiftCohesionAnalyzer",
                           "SwiftCohesionAnalyzerCore"]),
    ]
)
