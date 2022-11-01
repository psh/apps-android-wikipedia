// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://gitlab.com/api/v4/projects/40523916/packages/maven/apps-android-wikipedia/kotlinmultiplatformsharedmodule-kmmbridge/0.8.2/kotlinmultiplatformsharedmodule-kmmbridge-0.8.2.zip"
let remoteKotlinChecksum = "f2a6294b29ec9d3ebd999797fb09953cceb73c306ded46c5806bf299d053936a"
let packageName = "kotlinmultiplatformsharedmodule"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)