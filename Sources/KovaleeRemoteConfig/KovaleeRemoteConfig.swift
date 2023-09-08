import Foundation
import KovaleeFramework
import KovaleeSDK

extension RemoteConfigManagerCreator: Creator {
	public func createImplementation(
		withConfiguration configuration: Configuration,
		andKeys keys: KovaleeKeys
	) -> Manager {
		guard let key = keys.firebase else {
			fatalError("No configuration Key for Firebase found in the Keys file")
		}

		return FirebaseWrapperImpl(keys: key)
	}
}

// MARK: Firebase
extension Kovalee {
	public static let abTestKey = "ab_test_version"

	/// Retrieve Firebase ``RemoteConfigValue`` for a specific key
	///
	/// - Parameters:
	///    - key: string key of the remote value that the user is trying to load
	/// - Returns: retrieve the requested ``RemoteConfigValue`` if found
	/// - Throws: throws an error of type ``KovaleeError/remoteValueAlreadyUsedForABTest`` if they key is used for an AB Test experiment
	public static func remoteValue(forKey key: String) async throws -> RemoteConfigValue? {
		guard key != abTestKey else {
			KLogger.error("❌ ab_test_version is a private key and can't be used for remote config")
			return nil
		}

		guard let data = try await Self.shared.kovaleeManager?.remoteValue(forKey: key) else {
			return nil
		}

		return RemoteConfigValue(data: data)
	}
	
	/// Set Default values in the Firebase RemoteConfig.
	///	This method shold be only used for Remote Values NOT AB tests
	///
	/// - Parameters:
	///    - values: a dictionary of values to be stored
	public static func setDefaultValues(_ values: [String: Any]) {
		Self.shared.kovaleeManager?.setDefaultValues(values)
	}

	/// Retrieve the value associated with an AB testing experiment
	///
	/// - Parameters:
	///    - key: string key of the remote value that the user is trying to load
	/// - Returns: retrieve the requested ``RemoteConfigValue`` if found
	@available(*, deprecated, renamed: "abTestValue")
	public static func abTestValue(forKey key: String = abTestKey) async -> RemoteConfigValue? {
		await Self.abTestValue()
	}

	/// Retrieve the value associated with an AB testing experiment
	///
	/// - Returns: retrieve the requested ``RemoteConfigValue`` if found
	public static func abTestValue() async -> RemoteConfigValue? {
		guard let data = await Self.shared.kovaleeManager?.abTestValue(forKey: Self.abTestKey) else {
			KLogger.error("❌ No AB test value found")
			return nil
		}

		return RemoteConfigValue(data: data)
	}
}
