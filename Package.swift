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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1/VesperPlayerKit.xcframework.zip",
            checksum: "d53e478002073332dbf15bb35f08c9bda9261a76e17206c365ac7c9482ecff5c"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "c9a62b8cd440f9cbeae36763bc69e098cc5f76031a9f34eb0bcb2826b2c811d6"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "b683805d4f160420de37d262999e5d6de96d1094aca1ce27de62c118f30a9349"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "88df81ad51403c8284ffdbc4691b4100bdd1af6df5143e92c9ad70b650a03e60"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "1bacfb33a40d6480d2f10b2cb79e594e99f17353081d69cca8129a8b678e50b2"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.1/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "d112d42fcd814c802af6910eaf112b54417c90ad6332b6366be0a319f139b8ba"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
