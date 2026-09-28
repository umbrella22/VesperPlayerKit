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
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperPlayerKit.xcframework.zip",
            checksum: "021bdcca9a0da1d34b0480c15d8fe5b35e2639b7f42e093b0c1a4806e08bfde3"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVCodec",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperFFmpegAVCodec.xcframework.zip",
            checksum: "0e232d776d231514d9e6b0384dad9fc8065d7824a6ca28c0393e7b98095faad4"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVFormat",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperFFmpegAVFormat.xcframework.zip",
            checksum: "7bea7f4d16894184b5e4996620f811b69384333b08a9375df7ee6221083b8a61"
        ),
        .binaryTarget(
            name: "VesperFFmpegAVUtil",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperFFmpegAVUtil.xcframework.zip",
            checksum: "b0c2d195c08ed16fd743828ebbedbede771cc3f63509f9d293e5846caaef833f"
        ),
        .binaryTarget(
            name: "VesperPlayerRemuxFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperPlayerRemuxFfmpegPlugin.xcframework.zip",
            checksum: "def9e73f0d4dca303ea390495462be22fd17533b306f5ab9642fc17082d832fe"
        ),
        .binaryTarget(
            name: "VesperPlayerSourceNormalizerFfmpegPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperPlayerSourceNormalizerFfmpegPlugin.xcframework.zip",
            checksum: "918aff735252da5fee867dc5726c2c2be563fd488291d0f6a821b50f304ec293"
        ),
        .binaryTarget(
            name: "VesperPlayerPerformanceDiagnosticsPlugin",
            url: "https://github.com/umbrella22/Vesper/releases/download/v0.6.5/VesperPlayerPerformanceDiagnosticsPlugin.xcframework.zip",
            checksum: "5d699f528c3af81eaf27947b36c7fe5c0bf684dc62e2366c490917befe6e57fd"
        ),
        .target(
            name: "VesperPlayerKitUI",
            dependencies: ["VesperPlayerKit"],
            path: "Sources/VesperPlayerKitUI"
        ),
    ]
)
