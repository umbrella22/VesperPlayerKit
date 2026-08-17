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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.1/VesperPlayerKit.xcframework.zip",
            checksum: "5280656c5b01ad7ba7cb132427d7e3c115b162fe90e1a20440132f0b4cc38bce"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.1/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "790d9bd506f368401e4e959f76a12ebdc302d480395ab326b7c026d287ef9322"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.1/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "33e2372b88598d7b968e2f1466be8ff1a7f152f7c1de160d771c52097823f242"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.1/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "50138a35f0b67665b53465f61e0df84a76adeb899e96ef4c8e22fdf42cd61c4f"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.1/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "624be78de0860368cb9470a16e191cee56455e5abfccaececa7aef24dd25c102"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.4.3-rc.1/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "f8816ddc2f05d6d6ed981c6695e0b8073731e0957f7b4a5cc172d9e51cb2fc17"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
