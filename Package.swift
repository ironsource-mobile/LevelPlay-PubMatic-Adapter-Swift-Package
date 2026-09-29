// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-PubMatic-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "PubMaticAdapter", targets: ["PubMaticAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package", exact: "5.4.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pubmatic-adapter/5.11.0/ISPubMaticAdapter5.11.0.zip",
      checksum: "dc5f30e24e044843318fd1df8873a425e53a45506b9a7722a5503fb6ecdb9f6d"
    )
  ]
)
