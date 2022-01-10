/// Abstract class using for implement custom data storage
/// based on the system for which application will be developed.
/// Contains methods that are to get access to the user credentials.
abstract class IUserCredentialsStorage {
  /// Stores access token in the storage.
  Future storeAccessToken(String accessToken);

  /// Retrieves access token from the storage.
  Future<String?> retrieveAccessToken();

  /// Clears access token from the storage.
  Future clearAccessToken();
}
