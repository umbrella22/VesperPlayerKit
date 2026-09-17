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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperPlayerKit.xcframework.zip",
            checksum: "57a45840fb9d2a7274af8929692009a00c49799f4f972f3a0d178788c369e2c0"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "07b7bbc85096dedbdaa4920501550fa4324fbe14fbb1c279f224f72386b530bd"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "3a58520311a0ee49e22016fb4de8fc9fbee0ee7effd9ea660185b9ca95298b7b"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "bc2f58d50366dd57364b47f1000d13023838887847415fefd520076c05effa2a"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "c322a891cf50241136ecdce43532e0d989760a3cd7fcbbf54736ce860c5cf4bd"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "0286d90a27e91b813a523d3e789b13a74cf85c85fc1caee66933109b28a92d4a"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.0/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "a1a3e34825a0c1a3ccef0d8243c561644ae08c84a042461f690232f0721de46a"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
