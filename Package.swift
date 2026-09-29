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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperPlayerKit.xcframework.zip",
            checksum: "1351be4bdc73869f55c34c7c9b882ef374e79105a49851a143aa55f17c37aed3"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "0eed869035c670264a5950d78123fd4e4c152d05147ff05c05de5f8ed7387386"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "de7a852f389107d6a746b48fdcf4226863e7e88171fef9a257fea39708719919"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "0377dcaef2c6e5cc9231ff19041d36e7bc94cc00178875e9aa2fcd7d7944bef4"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "666878affb3b44c202d375eb6830d03c500a830e150e6703104a1a4f0c7c14f2"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "7e7b3bc1af3182061c569432f47ee891270c1eedb0e129ab07d853991e57e4a2"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.8.0/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "e9f2cbd5ef7010460136c554ef5dc4461032812ac7071c2c8541bb2893bf5d0b"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
