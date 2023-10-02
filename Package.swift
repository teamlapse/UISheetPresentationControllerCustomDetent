// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UISheetPresentationControllerCustomDetent",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "UISheetPresentationControllerCustomDetent",
            targets: ["UISheetPresentationControllerCustomDetent"]),
        .library(
            name: "UISheetPresentationControllerCustomDetentObjc",
            targets: ["UISheetPresentationControllerCustomDetentObjc"])
    ],
    targets: [
        .target(name: "UISheetPresentationControllerCustomDetentObjc",
                publicHeadersPath: ".",
               swiftSettings: [
                .unsafeFlags(["MODULEMAP_FILE=Sources/UISheetPresentationControllerCustomDetentObjc/UISheetPresentationControllerCustomDetentObjc.modulemap"])
               ]),
        .target(name: "UISheetPresentationControllerCustomDetent",
                dependencies: ["UISheetPresentationControllerCustomDetentObjc"]),
    ]
)
