// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftIconFont",
    defaultLocalization: "en",
    platforms: [
      .iOS(.v8),
      .macOS(.v10_11),
      .tvOS(.v9)
    ],
    products: [
        .library(
            name: "SwiftIconFont",
            targets: ["SwiftIconFont"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftIconFont",
            dependencies: [],
            exclude: [
              "Info.plist"
            ],
            resources: [
              .process("Resources/")
            ]),
        .testTarget(
            name: "SwiftIconFontTests",
            dependencies: ["SwiftIconFont"],
            exclude: [
              "Info.plist"
            ]),
    ]
)
