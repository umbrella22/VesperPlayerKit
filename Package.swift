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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperPlayerKit.xcframework.zip",
            checksum: "1b3b77cf723423d413cfb323753debd7e7e7de7dfbd2fa1ea20c727a3d10a6e6"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "81b935a5eef6b39b9663d684de0c23652f1fbdd53518946e54afa9e0eb686605"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "d9f39085c0a1a6444e9564acd595104a70a7de1e020fc51676d3fa57a6cb04c8"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "fd974c4821dd144b111cdd416b216533d8a9fdad4bf416a364416a2227b92d72"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "d6bcf26c1244fa08ec364395b1ef7cc9e4400b5e6ea4f318e1d7b6d8947fcee5"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "602f56f0f29616d8401c7d437cdf17becf3c6dbc0918a3a8dd54978ac90d2879"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.2/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "7082ba30efa679ccff958fada0d992a35dd3106f66b89f4ea8b9254b20e2e735"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
