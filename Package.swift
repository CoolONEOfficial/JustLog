// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "JustLog",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "JustLog",
            targets: ["JustLog"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", from: "1.8.3"),
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", from: "7.6.4")
    ],
    targets: [
        .target(
            name: "JustLog",
            dependencies: ["SwiftyBeaver", "CocoaAsyncSocket"],
                path: "JustLog/",
            exclude: ["Supporting Files/Info.plist", "Supporting Files/JustLog.h"]),
    ]
)
