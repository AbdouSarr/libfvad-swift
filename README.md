# libfvad_swift

libfvad_swift is an open-source Swift package that provides an easy-to-use iOS API for WebRTC's voice activity detection feature (VAD).

forked and ported to SPM from the original implementation [here](https://github.com/dpirch/libfvad).

## Usage Example

```swift
import AVFoundation
import libfvad_swift

let detector = fvad_new()

public func runPrediction(on frames: UnsafePointer<Int16>, interval ms: Int) -> Bool {
    let count = ms * _sampleRate / 1000
    switch fvad_process(inst, frames, count) {
    case 0:
        return false // no voice activity
    case 1:
        return true // voice activity detected
    default:
        break
    }
}
```

## Installation

To use libfvad_swift in your project, add it to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/abdousarr/libfvad_swift", from: "1.0.1")
]
```

And then import the package in your source files:

```swift
import libfvad_swift
```
