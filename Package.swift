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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperPlayerKit.xcframework.zip",
            checksum: "5d93ef41a623e3f30cae5fd42d5f038a65f327825fdf8ffab62bdb0c599e9537"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "e73fad1f5e7a83e83cb548db21edca76dc46b09c64544e91b0229eb00a3027a3"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "68f97de0539bda32f7ba51944e34fe9b9265c701507f6238271786d4189f1ef1"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "1232e3b7c91b4b4088a10825935685306d7628740891104e8f6744fcb6ac92fb"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "627e8dc867e238ef06691d8e60a169854be6b960a2c24410cd2dc60321c0a10f"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "4e014cc2b77745587533601ba89a169ce68d74bd4df413212cf87d35ea94fe89"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.3/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "f6b059d9e82d2eee0bbe9ff807909691c472405a4f5442db9b2346ce112279ee"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
