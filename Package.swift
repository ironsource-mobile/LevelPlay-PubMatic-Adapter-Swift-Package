// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-PubMatic-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PubMaticAdapter", targets: ["PubMaticAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package", exact: "5.5.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "PubMaticAdapter",
      dependencies: [
        "PubMaticAdapterSDK",
        .product(name: "OpenWrapSDK", package: "OpenWrapSDK-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "PubMaticAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pubmatic-adapter/5.12.0/ISPubMaticAdapter5.12.0.zip",
      checksum: "19b6f72014faf25cb90dce0563b5cfe1204211bfcd2362c8185314cde65a09ab"
    )
  ]
)
