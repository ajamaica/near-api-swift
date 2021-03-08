// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "nearclientios",
    platforms: [.iOS(.v10), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(
            name: "nearclientios",
            targets: ["nearclientios"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.13.2"),
        .package(url: "https://github.com/yannickl/AwaitKit.git", from: "5.0.0"),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.1.0"),
        .package(url: "https://github.com/keefertaylor/Base58Swift.git", from: "2.1.7"),
        .package(url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap.git", from: "1.0.0")
    ],
    targets: [.target(name: "nearclientios",
                      dependencies: [ "PromiseKit",
                                      "AwaitKit",
                                      "KeychainAccess",
                                      "Base58Swift",
                                      "TweetNacl"
                      ],
                      path: "nearclientios/Sources"),
              .testTarget(
                  name: "NearTests",
                  dependencies: ["nearclientios"],
                  path: "nearclientios/Tests"),
    ],
    swiftLanguageVersions: [.v5]
)

