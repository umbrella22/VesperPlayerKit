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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3/VesperPlayerKit.xcframework.zip",
            checksum: "be074da099a00a4bfca1ce9535e8c997512efe391cbbb99aedd793c775bca5c0"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "ff91f18afd063df0e478297129606492fca128d94b9965b284fb313ed748322e"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "09a0af0b3402c02f871d4b1f1e98da5de6537af7f5f1b25e69229f6e659f5263"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "e452af14b99c111af415c74a6b7b1c68a01a31755d36d38e5df8b460c1ebdcdd"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "4449082ab02cd26350c31825c645c2a4270d648522b9edc9cdf2a6d3f294029e"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "f0687f78347a46ac919184563c68885a221f2de27b021f5578f7989e83afa4ab"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
