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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperPlayerKit.xcframework.zip",
            checksum: "bb1e84caab19b29d295fcc63e882bcab6056c58bd7fca9ec85f6d01aae998752"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "8df20d9bdf5261f152e7a97ea4a810ec93b9e98de48fdcdb1271415be4a7d050"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "b73e7c9277d46a8aa9683aa8abdb4bee3928af223701af011103f4f8f5a06f93"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "0ffe202747496b9613aea44e19f4985d429ee9762c17c8f171818d58bf030a64"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "f02cc82c51522fa1b89a21a1ffffb68fcebfad8c6c12b92020aee67e5531f1c9"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "d4692b00c5ecf41b7aa0932d9713896ed0e851c61fcd1a26abeb5032b6bf0868"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.5.2/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "ef84d374a2d8a8bd4d1ac6d68032da44ff2f1eb0cacdcccee6db9cc3b98c599a"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
