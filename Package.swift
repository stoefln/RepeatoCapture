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
            url: "https://github.com/stoefln/RepeatoCapture/raw/main/RepeatoRender-114.zip",
            checksum: "97d1ff473242ff203b95eb1fd62c3f975c2867dcf35972c1f627e4b318818595"
        ),
    ]
)
