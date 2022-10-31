// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://gitlab.com/api/v4/projects/40523916/packages/maven/apps-android-wikipedia/kotlinmultiplatformsharedmodule-kmmbridge/0.8.3/kotlinmultiplatformsharedmodule-kmmbridge-0.8.3.zip"
let remoteKotlinChecksum = "ad7c27523e1cb34b3e83917190e6f0d2ec0594f4246fe9df8ca5ce4f1ed3c9aa"
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