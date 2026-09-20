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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperPlayerKit.xcframework.zip",
            checksum: "61a309549d94146121e47dca98d38aac9f373b5dfdc9ce21dda46df47815a0eb"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "f6e122145c2afea3ce710f7a9956315b266a35c5ef5c5b57ffc5ba1d83fccbfc"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "321f156e01653485f75848b6ce9ea08dcd695438c18c33497e28a626c7770da0"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "fdac21255704cb8cc91d8f4f0db1cf06f5e976c6c84d1568739dfa965462ac7a"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "863f8faf176d22c65ad58e985abc761a89dcecbda29e97f32dd7c497a7c6dfde"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "adaaaa6c27c8d470733fce6de67d312d44c0bce73f26c6ba85b441ff72277a3b"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.3/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "cc2928ebc107260db66c78a40f76931808e816c6f8aa508d72e1c720693b6e21"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
