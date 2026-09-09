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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperPlayerKit.xcframework.zip",
            checksum: "3ecde510a973e4ddd7f605dd971ffdd015c4cd611d14c027025b2ccc65016946"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "cc0fcc06e26dd1c7ac342da2540249983378e34be92f5a49427dd13a88fe0ea4"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "9af15000b9975a413650a965398b9f4a90359932e591ffce06d403631666df6a"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "0eb6aca5dae1077d4fad3865f809793b8b5bfbb856701ab1d12a6104a60e21ca"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "9491fd41713e68f3eb0125e83413e44b6c73e0bcc896ca91de0b064ebf8791b9"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "6772f6f1cea0add1ee96abedb675eb6bb95ed501b810f2129b997da1c0520b95"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.4/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "6f7e1a61a85a6d9f3bd64b8c27980b7f9585af65db367128eca440a03c0c2575"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
