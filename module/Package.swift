// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "EMT",
  platforms: [.macOS(.v10_15)],
  products: [
    .library(
      name: "EMT",
      type: .dynamic,
      targets: ["EMT"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SavchenkoValeriy/emacs-swift-module.git", branch: "main")
  ],
  targets: [
    .target(
      name: "EMT",
      dependencies: [
        .product(name: "EmacsSwiftModule", package: "emacs-swift-module")
      ],
      plugins: [
        .plugin(name: "ModuleFactoryPlugin", package: "emacs-swift-module")
      ]),
  ]
)
