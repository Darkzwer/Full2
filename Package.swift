// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Full2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Full2",
            targets: ["Full2", "FaceSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Darkzwer/FullCore.git", .exact("7.2.9102")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "Full2", dependencies: ["FullCore"]),
        .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/FaceSDK/6.1.1825/FaceSDK-6.1.1825.zip", checksum: "9b313d81bf540035f0bcd059ec5612fe517fd841746225486f397c6c65a88719"),
        .testTarget(
            name: "Full2Tests",
            dependencies: ["Full2"]),
    ]
)
