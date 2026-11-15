// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-PubMatic-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "PubMaticAdapter", targets: ["PubMaticAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package", exact: "5.6.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pubmatic-adapter/5.13.0/ISPubMaticAdapter5.13.0.zip",
      checksum: "60ed128c9a0f9af8a4f60b45ef652741c61858ffb7445882b58c12604391036b"
    )
  ]
)
