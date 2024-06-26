// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KovaleeRemoteConfig",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v14)
	],
    products: [
		.library(
			name: "KovaleeRemoteConfig",
			targets: [
				"KovaleeRemoteConfig",
			]
		),
    ],
    dependencies: [
		.package(url: "https://github.com/cotyapps/Kovalee-iOS-SDK", from: Version(1, 6, 1)),
		.package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: Version(10, 12, 0))
    ],
    targets: [
		.target(
			name: "KovaleeRemoteConfig",
			dependencies: [
				.product(name: "KovaleeSDK", package: "Kovalee-iOS-SDK"),
				.product(name: "FirebaseAnalyticsSwift", package: "firebase-ios-sdk"),
				.product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk"),
				.product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk")
			],
			resources: [
				.copy("PrivacyInfo.xcprivacy"),
			]
		)
    ]
)
