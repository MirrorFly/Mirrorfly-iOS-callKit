// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MirrorFlyCallKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "MirrorFlyCallKit",
            targets: ["MirrorFlyCallKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MirrorFlyCallKit",
            url: "https://github.com/MirrorFly/Mirrorfly-iOS-callKit/releases/download/1.0.0/MirrorFlyCallKit.xcframework.zip",
            checksum: "670d912bab92d5ffeb89fa4fa4cae45ab8c0722eb7a138957aa65409976f9f15"
        )
    ]
)
