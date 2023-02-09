// swift-tools-version:5.1
import PackageDescription
let package = Package(name: "PerfectSMTP",
	platforms: [
		.macOS(.v10_15)
	],
	products: [.library(name: "PerfectSMTP",targets: ["PerfectSMTP"]),],
    dependencies: [
        .package(url: "https://github.com/Agitek-io/Perfect-CURL.git", .branch("bug/curl_option_error")),
		.package(url: "https://github.com/PerfectlySoft/Perfect-Crypto.git", from: "4.0.0"),
		.package(url: "https://github.com/PerfectlySoft/Perfect-MIME.git", from: "1.0.0"),
	],
    targets: [
        .target(
            name: "PerfectSMTP",
            dependencies: ["PerfectCURL", "PerfectCrypto", "PerfectMIME"]),
    ])
