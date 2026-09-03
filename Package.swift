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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperPlayerKit.xcframework.zip",
            checksum: "63ca5222ba5a0073645533a3e9e8ad9f9fadd7e3b6e3a7299df31e04f088b7dd"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "6e436e842f73d7ffbdf9fb5cbf7b7478410d241cb86a7c5b4309085ae62f9afa"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "9d21b7c2864fddcf291404652b60e79e6057a03db15898a4076e7f8e2dab7ce3"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "0aba88b3ee9d3d69725e1fd549b951b2a9e4321f708c921ef55ae85dea91260b"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "02cde1512ec316cc435aa1a2d9b498d9e92247670ad52999e3a0fc32cd49a034"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "929365436a5353c0564440aaaa6a0638db92340ae1e9a6733f5032dde9b1e993"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.4/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "5164904e1040691651fa952158a984005eb3ef0ed3db488bd2f7689fcb4e7b75"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
