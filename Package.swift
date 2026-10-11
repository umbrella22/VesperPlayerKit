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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperPlayerKit.xcframework.zip",
            checksum: "34aa06b10d7194bbdf24deb86926e5c2b8ee83ca6cc692b5b1f015f78f1fe5d3"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "0640f71d006ec0c35c69ff7afe03fc8e328ee4ae941b02e0cc2acdf06a5ebfcd"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "54d0ce77fb5ea863846659fdcbce0ee6676c78a363773fbcc3174784021dae35"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "cc88da6cd1122cf5ae5a8cb39f87d35975ec111b3fdaac96d535187d59c4e576"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "db3c03d1ef6d6b8e29bd60649388d207d045059e8cd494cd5ff8028ebef2c02d"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "81984037e8f02109ba3dee75c9c5d7b325f4ee0c8a442eaa9a1e163587543242"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.9.1/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "07e537fbfdc2fe5d61d1829b50bfc072ffc089716da0ccdb0c189b28095c9e98"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
