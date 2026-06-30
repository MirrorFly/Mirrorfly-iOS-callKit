# MirrorFlyCallKit (Binary SPM)

Binary-only Swift Package for MirrorFlyCallKit. No implementation source is included.

## Add in Xcode

1. File → Add Package Dependencies
2. Enter: `https://github.com/MirrorFly/Mirrorfly-iOS-callKit`
3. Select version `1.0.2` or later

## Import

```swift
import MirrorFlyCallKit
```

## Contents

- `Framework/MirrorFlyCallKit.xcframework` — compiled SDK (no Swift sources)
- `Framework/LiveKitWebRTC.xcframework` — WebRTC dependency
- `Framework/RustLiveKitUniFFI.xcframework` — LiveKit UniFFI dependency
- `Sources/MirrorFlyCallKitSupport/` — SPM linker shim only (no SDK implementation)

This package uses path-based binary targets so it works with **private** GitHub repositories.
