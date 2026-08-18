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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.2/VesperPlayerKit.xcframework.zip",
            checksum: "183487ea5e32337163a26a787248a83cf7dfab4bbb1c39f7bb00635f94b94e5c"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.2/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "9f4aed46f85f3f17cb6c5c6a9f0ab4105f8278fd828d14fca47818e7a983ab28"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.2/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "434799717a3c3c3763f7b2695766f9cb11a0f1fa24d2f9c051c5af0fd991ba77"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.2/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "d06ffd79a0cd96e3b2afb0da42859c14d7c9645c402dbb4233de0e32214affe8"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.2/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "cc5b795897bb039fae1bf0c7efb92114d67777807ae80421f274c06e94bed184"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.2/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "2c8c055366eb6443b704ac103c02106abb71f24a9f94b18c2e65b6cadb69f4a8"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
