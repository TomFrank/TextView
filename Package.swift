// swift-tools-version:5.1

import PackageDescription

let package = Package(
	name: "TextView",
    platforms: [
       .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
		.library(
			name: "TextView",
			targets: ["TextView"]
		)
	],
	targets: [
		.target(name: "TextView"),
		.testTarget(
			name: "TextViewTests",
			dependencies: ["TextView"]
		)
	]
)
