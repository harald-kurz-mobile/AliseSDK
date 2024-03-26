// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
name: "AliseSDK",
products: [
.library(
name: "AliseSDK",
targets: ["AliseSDKTarget"]),
],
dependencies: [
.package(
url: "https://github.com/grpc/grpc-swift.git", "1.21.1"..<"1.21.1"
),],
targets: [
.target(
name: "AliseSDKTarget",
dependencies: [
.target(name: "AliseSDK"),
.product(name: "GRPC", package: "grpc-swift"),],
path: "AliseSDKTarget"
),
.binaryTarget(name: "AliseSDK",
path: "Frameworks/AliseSDK.xcframework"),]
)
