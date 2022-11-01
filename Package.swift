// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://gitlab.com/api/v4/projects/40523916/packages/maven/apps-android-wikipedia/kotlinmultiplatformsharedmodule-kmmbridge/0.8.6/kotlinmultiplatformsharedmodule-kmmbridge-0.8.6.zip"
let remoteKotlinChecksum = "1b501a9920bdb1827625ef20e9307126bdc852c904f17efc266c1b9dbbc643a8"
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