// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-InMobi-Adapter-Swift-Package",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "InMobiAdapter", targets: ["InMobiAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package", exact: "11.5.0"),
    .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", "9.0.0"..<"10.0.0"),
  ],
  targets: [
    .target(
      name: "InMobiAdapter",
      dependencies: [
        "InMobiAdapterSDK",
        .product(name: "InMobiSDK", package: "InMobiSDK-Swift-Package"),
        .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
      ]
    ),
    .binaryTarget(
      name: "InMobiAdapterSDK",
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/inmobi-adapter/5.11.0/ISInMobiAdapter5.11.0.zip",
      checksum: "c1bf9f759630331e364b585fa50da92e4ccb42371304d3db99428b51f9093184"
    )
  ]
)
