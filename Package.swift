// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://gitlab.com/api/v4/projects/40523916/packages/maven/apps-android-wikipedia/kotlinmultiplatformsharedmodule-kmmbridge/0.8.9/kotlinmultiplatformsharedmodule-kmmbridge-0.8.9.zip"
let remoteKotlinChecksum = "7cbc64915e6606b6fb985a578ee4ff4f91230eaddc5f8ca0d1e456a1b1193ba0"
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