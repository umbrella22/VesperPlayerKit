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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperPlayerKit.xcframework.zip",
            checksum: "097c522212fe33292ed71304593f22ee229e80250dd0ea32b89b8fa7e8a13e5e"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "2be63ee88f5ea70460ae836d3a546677e02708ca420d63c13779d57baaeeec2b"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "372036b5406cd6a385bbf0a3310f2482094f4552756ba27d9195a3764361f23e"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "a21e40f6904c7884e27938c8140b7c0c359644ee13e9b001802372c36f22e652"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "a38e9bb4247d3625e78f9245e621030daca20a7ce4843fd41b525437f5999546"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "0a0bbd2109be69a0bee6716e60bbab4b66b8f3a8273e0fa29ef003466b2e5f2f"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.2/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "1b62507d707b0a02b7416362fcee045303a5954883f3a3562ddb4c85048ac7b9"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
