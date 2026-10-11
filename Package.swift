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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperPlayerKit.xcframework.zip",
            checksum: "97292e47bb34caeff708becb7442f46471f9ccaeb3d63a88f68cb0f2b809a89e"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "1976b992e9ae9310bce4f7ff4811d4640608fa8b314714b4dcf6b5aa821a6114"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "f5ca7731d0b254cac6f9a9a66dd36387fb16c68c3d25e94dd74aaad4dca23955"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "45c3ec414f28ce4f43dbd306a2f7b119cf4d20f0ee6a777a1361cb7c6b999ef5"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "218bfaa4d724593230d166ba59884586960426788325c71e1ba945609b70782a"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "46acf8194d4655de8cd1adf56372e73dcc5fad930c4b4e49bc9a6a1e920fcc56"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.0/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "9b7287611b3973bfe8db0e0f7d9726739b73020e85bdd05f288bdb3db133dd68"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
