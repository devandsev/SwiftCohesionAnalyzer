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
    ],
    targets: [
        .target(
            name: "SwiftCohesionAnalyzer",
            dependencies: ["SwiftCohesionAnalyzerCore"]),
        .target(
            name: "SwiftCohesionAnalyzerCore",
            dependencies: []),
        .testTarget(
            name: "SwiftCohesionAnalyzerTests",
            dependencies: ["SwiftCohesionAnalyzer",
                           "SwiftCohesionAnalyzerCore"]),
    ]
)
