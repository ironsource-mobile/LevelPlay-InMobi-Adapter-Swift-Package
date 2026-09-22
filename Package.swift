// swift-tools-version: 6.0
import PackageDescription

let package = Package(
  name: "LevelPlay-InMobi-Adapter-Swift-Package",
  platforms: [.iOS(.v15)],
  products: [
    .library(name: "InMobiAdapter", targets: ["InMobiAdapter"]),
  ],
  dependencies: [
    .package(url: "https://github.com/InMobi/InMobiSDK-Swift-Package", exact: "11.4.1"),
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
      url: "https://raw.githubusercontent.com/ironsource-mobile/iOS-adapters/master/inmobi-adapter/5.9.0/ISInMobiAdapter5.9.0.zip",
      checksum: "0bd9d625398523e0ed594cf225e0f808d5e259523bb8c0ceba351c78844e9661"
    )
  ]
)
