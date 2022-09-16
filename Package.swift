// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "When",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
    ],
    products: [
        .library(name: "When",
                 targets: ["When"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git",
                 .upToNextMinor(from: "5.0.0")),
        .package(url: "https://github.com/Quick/Nimble.git",
                 .upToNextMinor(from: "10.0.0"))
    ],
    targets: [
        .target(name: "When",
                path: "Sources"),
        .testTarget(name: "WhenTests",
                    dependencies: ["When", "Quick", "Nimble"],
                    path: "WhenTests"),
    ],
    swiftLanguageVersions: [.v5]
)
