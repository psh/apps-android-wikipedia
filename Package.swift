// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://gitlab.com/api/v4/projects/40523916/packages/maven/apps-android-wikipedia/kotlinmultiplatformsharedmodule-kmmbridge/0.8.1667266080456/kotlinmultiplatformsharedmodule-kmmbridge-0.8.1667266080456.zip"
let remoteKotlinChecksum = "abc9fc72433f19cfe02f65c3890cca3a89cf2373bd936a84fdbf8971d735555a"
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