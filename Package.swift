// swift-tools-version:5.3
import PackageDescription

// Bundle up BugSplat.xcframework as a Swift Package suitable for integration with Swift Package Manager

let package = Package(
    name: "BugSplat",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "BugSplat",
            targets: ["BugSplat"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "BugSplat",
            url: "https://zion.com/bugsplat/releases/BugSplat.xcframework.1.0.0.zip",
            checksum: "4f33c5d70379b90656adf3eac1a8cd823ebea910344e0da2343cf67231465e7f"
        ),
        // Add a fake target to satisfy the swift build system
        // Add a dependency to the .binaryTarget
        // Add the expected Sources folder structure: Sources/BugSplatPackage/
        // Add a fake Swift source: Sources/BugSplatPackage/Empty.swift
        .target(
            name: "BugSplatPackage",
            dependencies: ["BugSplat"]
        )
    ]
)
