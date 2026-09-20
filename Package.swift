// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "VesperPlayerKit",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(name: "VesperPlayerKit", targets: ["VesperPlayerKit"]),
        .library(name: "VesperPlayerKitUI", targets: ["VesperPlayerKitUI"]),
        .library(
            name: "VesperPlayerSourceNormalizerFfmpeg",
            targets: [
                "VesperPlayerSourceNormalizerFfmpegPlugin",
                "VesperFFmpegAVCodec",
                "VesperFFmpegAVFormat",
                "VesperFFmpegAVUtil",
            ]
        ),
        .library(
            name: "VesperPlayerRemuxFfmpeg",
            targets: [
                "VesperPlayerRemuxFfmpegPlugin",
                "VesperFFmpegAVCodec",
                "VesperFFmpegAVFormat",
                "VesperFFmpegAVUtil",
            ]
        ),
        .library(
            name: "VesperPlayerPerformanceDiagnostics",
            targets: ["VesperPlayerPerformanceDiagnosticsPlugin"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "VesperPlayerKit",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperPlayerKit.xcframework.zip",
            checksum: "a35b693ccb9e1a29902958fd9ff59f850a86f29318fcaaa7eb09ab31b59464d1"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "d5bbfb61ec82165e06f12872d5f73e3d08a09707367dec58450eec3327f1138f"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "4feb3f05d2463ff7dcf81e2d7ef1bc21d3b1b3b31a21d5ed8e6934475a91ce90"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "93b78be751dac138e4c2e140b67b7c8194054a024f8b5300c7249d90869f85a3"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "efea140f107044f8d99121998d44539a946430fb6f2c276d5840d167d9ac3b1d"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "92a887f569c1b0f1b309bce7f7094d3e6badf82e4ed2083670743715cad009b3"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.4/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "4f021d5047ce883209f47613194650e9ccc965ec4e585cd03cd5fa4821316475"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
