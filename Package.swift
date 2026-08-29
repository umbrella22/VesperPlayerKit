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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.0/VesperPlayerKit.xcframework.zip",
            checksum: "0bfe8dc5c976addc805aa07f86340b196569f0153af807bae97595755eea360f"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.0/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "3de4df4b05dced1a5e272c516ac6a3776dd88f4275fc5b8c963dc091055d036e"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.0/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "bcb7506ce08da8876bdb216df9d438c72726a31773adefdb40f6b95f90156bf2"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.0/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "3b414ed98e6417249e02baf83a7c29526fd0b91aa30baf336369db15fb25d1df"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.0/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "7bdbc143ceca3bb1882164f77e4d77f5620b3e0bc7b024330574727c91f979bd"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.0/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "2d14ed7f6ab80670c23da78e7bf35d4d637b0e32343818909b89c5ada77431a6"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
