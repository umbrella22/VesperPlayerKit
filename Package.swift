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
    ],
    targets: [
        .binaryTarget(
            name: "VesperPlayerKit",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1-rc.1/VesperPlayerKit.xcframework.zip",
            checksum: "b27ec16bcf44e3a358413cd0492c6d180c2d683e3c63b8a1fb8ac6ddf2eb2e55"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1-rc.1/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "7aa077a69ef88697ecd859ce8eadd52fe11209fa7d212a4ca65f223739efe8c7"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1-rc.1/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "2054b31df9ca9a16a01e040518f4966daa4860f2e54030139dc6c321d3693380"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1-rc.1/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "1d4bc805dea899e96f421b43c5ea67137d389942dda5d6f6a27ddfe7d4585cbe"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1-rc.1/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "2df4cabb4ef8e83a4fddc454d0c15470f9daf5ab27b3fc552a0d3ae93b13cb97"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1-rc.1/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "00c25d641300a0a43a09ff7c468058d9c0aa0f21ba820b05872c68cedcb92f79"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
