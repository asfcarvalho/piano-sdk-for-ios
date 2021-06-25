// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PianoComposer",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PianoComposer",
            targets: ["PianoComposer"])
    ],
    dependencies: [
        //.package(name: "Facebook", url: "https://github.com/facebook/facebook-ios-sdk", .upToNextMajor(from: "5.10.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PianoComposer",
            dependencies: [
                //.product(name: "FBSDKLoginKit", package: "Facebook"),
                //.product(name: "FBSDKCoreKit", package: "Facebook"),
            ],
            path: "Sources",
            linkerSettings: [
                .linkedFramework("UIKit", .when(platforms: [.iOS])),
                .linkedFramework("WebKit", .when(platforms: [.iOS]))
            ])

        //.testTarget(
          //  name: "MySPMTests",
            //dependencies: ["MySPM"]),
    ]
)
