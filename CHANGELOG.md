# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.4.1] - 2024-01-24
### :sparkles: New Features
- [`1bd8fa3`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/1bd8fa311d557e5c10c7298e40383c1e0ae6322a) - new function to retrieve, localy stored, ab test value *(commit by [@fto-k](https://github.com/fto-k))*

### :wrench: Chores
- [`4b9e01f`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/4b9e01f1d1810c6f715ac5a8d5206c596dd4bd06) - updated minimum version for KovaleeSDK *(commit by [@fto-k](https://github.com/fto-k))*
- [`e9d713f`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/e9d713fa19a8ef712751e21890e6c87d679d6f0f) - removed fastlane/report.xml from git *(commit by [@fto-k](https://github.com/fto-k))*
- [`ee94b9d`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/ee94b9de5120b72fdb6dc3f461208a74035a7c18) - removed Packaged.resolved from git *(commit by [@fto-k](https://github.com/fto-k))*
- [`1e74b89`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/1e74b89d490ec769b612f9db3c9e71c130484c5b) - update minimum KovaleeSDK version in podspec *(commit by [@fto-k](https://github.com/fto-k))*


## [1.4.0] - 2024-01-19
### :sparkles: New Features
- [`bfa8797`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/bfa8797d4d641f11c0caa0a41bfd97bef62e1dbf) - new method for setting the AB test value manually and to set a remote fetch timeout *(commit by [@fto-k](https://github.com/fto-k))*

### :wrench: Chores
- [`52b12f8`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/52b12f80002421fdd78b0455c0b269cf655d9b3d) - restored KovaleeSDK to main branch *(commit by [@fto-k](https://github.com/fto-k))*


## [1.3.2] - 2023-12-05
### :bug: Bug Fixes
- [`bd125dd`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/bd125dd841abc54d2c014527b1bb97f609d1c237) - rolling back RemoteConfig *(commit by [@fto-k](https://github.com/fto-k))*

### :wrench: Chores
- [`10ecafd`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/10ecafd712bc9bd01ac7dd9ab79bf28698c0eb09) - updated KovaleeSDK minimum version *(commit by [@fto-k](https://github.com/fto-k))*
- [`f32ca7a`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/f32ca7ad75e8abdfcb29f552c78d2404bbb25dc3) - new build v1.3.2 *(commit by [@fto-k](https://github.com/fto-k))*


## [1.3.1] - 2023-11-08
### :bug: Bug Fixes
- [`58ba9a5`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/58ba9a559e471ac8b8428599f7885b82b7460000) - abValue retrieval should still be async *(commit by [@fto-k](https://github.com/fto-k))*


## [1.3.0] - 2023-11-08
### :sparkles: New Features
- [`14f1021`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/14f1021e011f6598a33ba0348f3d8fe2365a7d2e) - removed asynchronicity abTestValue and remoteValue *(commit by [@fto-k](https://github.com/fto-k))*


## [1.2.1] - 2023-10-23
### :sparkles: New Features
- [`75bf7f4`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/75bf7f4fe9ce0a85d0c3f54b8c5610b03fc2a90b) - enabled crashlytics *(commit by [@fto-k](https://github.com/fto-k))*


## [1.2.0] - 2023-09-21
### :sparkles: New Features
- [`8130bc6`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/8130bc610d75f5b9ad2402461ed29c3a62f76a04) - added functionality to disable user tracking *(commit by [@fto-k](https://github.com/fto-k))*


## [1.1.2] - 2023-09-08
### :sparkles: New Features
- [`6fab98c`](https://github.com/cotyapps/KovaleeRemoteConfig-iOS/commit/6fab98c935c70dd5134e32865a3e424213468807) - depecrated abTestValue(forKey:) and added new abTestValue(), also added check for preventing to retrieve ab test value from remoteValue(forKey:) function. *(commit by [@fto-k](https://github.com/fto-k))*


[1.1.2]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.1.1...1.1.2
[1.2.0]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.1.2...1.2.0
[1.2.1]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.2.0...1.2.1
[1.3.0]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.2.1...1.3.0
[1.3.1]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.3.0...1.3.1
[1.3.2]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.3.1...1.3.2
[1.4.0]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.3.2...1.4.0
[1.4.1]: https://github.com/cotyapps/KovaleeRemoteConfig-iOS/compare/1.4.0...1.4.1