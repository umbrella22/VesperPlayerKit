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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperPlayerKit.xcframework.zip",
            checksum: "56f7e0108fb2ea0888df15112280c06d3b01a002006bed527a6cd83d87633509"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "5c46d2d7a09de4f65096183ba76d4b74887320a3b27a6d26b514c307f29a0abe"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "6ec2e1263632ef8db6f2ca6339a0acdda1f8ea3490b3c2a592d75954bb16416b"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "b6d737b617a9850ee8d903e2224ee1994926d5fb8518d3b18d0cf67a439bdd7c"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "8fe079b4c41bad76f1321ad1f47d41a8333f44c4b2b933ba43b6f15ad71bd70f"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "783a18870c56b7f08f444c417f099b42d59f4207396d9e90524f26b994c279ba"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2-rc.1/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "ca26b90f6a774aeb56dfd593eca124267beac022ad3919aed26ac6a38f1847e6"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
