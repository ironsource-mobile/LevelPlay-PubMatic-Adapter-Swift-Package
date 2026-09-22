// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-PubMatic-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "PubMaticAdapter", targets: ["PubMaticAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/PubMatic/OpenWrapSDK-Swift-Package", exact: "5.4.0"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/pubmatic-adapter/5.10.0/ISPubMaticAdapter5.10.0.zip",
      checksum: "973f58253ce75e93baf6274d0835fa1aba9e66c144ec1efae824303132fd3a8a"
    )
  ]
)
