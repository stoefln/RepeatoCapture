// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let hostname = Host.current().name ?? "localhost"

let package = Package(
    name: "RepeatoCapture",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "RepeatoCapture",
            targets: ["RepeatoCapture"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "RepeatoCapture",
            dependencies: ["RepeatoRender"],
            cSettings: [.define("DEVELOPER_HOST",
                                to: "\"\(hostname)\"")]),
        .binaryTarget(
            name: "RepeatoRender",
            url: "https://github.com/stoefln/RepeatoCapture/raw/87e8c4572750e7050e447d0e8abe6b8a9b50d207/RepeatoRender.zip",
            checksum: "6cd4933102f66fdb3e8fde89fcb1e5baf679567d092f80ecf0b014e1af76e7ce"
        ),
    ]
)
