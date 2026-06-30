// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "MirrorFlyCallKit",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "MirrorFlyCallKit",
            targets: ["MirrorFlyCallKitSupport"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-swift", exact: "10.54.6"),
        .package(url: "https://github.com/apple/swift-protobuf", exact: "1.35.1"),
        .package(url: "https://github.com/apple/swift-collections", exact: "1.0.4"),
    ],
    targets: [
        .binaryTarget(
            name: "MirrorFlyCallKitCore",
            path: "Framework/MirrorFlyCallKit.xcframework"
        ),
        .binaryTarget(
            name: "LiveKitWebRTC",
            path: "Framework/LiveKitWebRTC.xcframework"
        ),
        .binaryTarget(
            name: "RustLiveKitUniFFI",
            path: "Framework/RustLiveKitUniFFI.xcframework"
        ),
        .target(
            name: "MirrorFlyCallKitSupport",
            dependencies: [
                "MirrorFlyCallKitCore",
                "LiveKitWebRTC",
                "RustLiveKitUniFFI",
                .product(name: "RealmSwift", package: "realm-swift"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "DequeModule", package: "swift-collections"),
                .product(name: "OrderedCollections", package: "swift-collections"),
            ],
            path: "Sources/MirrorFlyCallKitSupport"
        ),
    ]
)
