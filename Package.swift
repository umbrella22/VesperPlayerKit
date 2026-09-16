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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperPlayerKit.xcframework.zip",
            checksum: "212f1f38a132bdd757ff88c82362612fd9b408263aec236fe361422caa786d75"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "f876427562aa93a7e3c695d81682f3bca1e742679f431dc6a89075ab5f9f222b"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "603cdff45115c0caadf3c6562d4eca353f82ba123708d8370ede17eb24e10637"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "c3adea691687eff025e26d98e3c36423b29573010e4e4611b8ca1f5c942be5ed"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "5d670964e0987e6af89b5d0f9a41f363f098c587c649151406f11c59bc6cb013"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "201b948634edf71a6ddb33ee2d291d645dc0ca5f11eadbf7fc28217a9accb33a"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.6/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "c7a60cc8466c0a39c28f56ef9ba5013709c2cacc09d86a30a2d010701dd742a4"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
