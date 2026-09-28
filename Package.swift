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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperPlayerKit.xcframework.zip",
            checksum: "0e3303d6932c061aa19b6b71194c63849238814f7ffc10a3674dd1dcef105764"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "1ed9caea6ff0fb323c377fa53dce81b5ace1615d3dc9c751e121844cb8e4f606"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "29a568c0c1fe16e11653d27f55acb3750a88244bed9fe1ddada3504fbaa30748"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "977a29739b09d03153c62003914d5f1b58b5a4b8fd675479fb83d1d1a836bb2d"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "4768de7699b87f2a0457dd3210b64aba3fc1a0ae140eef89ef88e3afa0c010b7"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "d92093ea9a04f75b790a37c7130ecedad5db3c55766d0b7898e030a74214e854"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.7.0/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "28359a8e7ce622de3f9e61cc43353f541746edce96996425d6aaaff8032a4f3c"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
