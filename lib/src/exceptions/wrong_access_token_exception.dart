/// The exception that is thrown when attempted to update access token that is not valid.
class WrongAccessTokenException implements Exception {
  @override
  String toString() {
    return "WrongAccessTokenException: Attempted to update access token with the value that is not valid access token";
  }
}
