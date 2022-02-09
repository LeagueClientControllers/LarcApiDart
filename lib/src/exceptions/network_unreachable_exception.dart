/// The exception that is thrown when api method was executed with errors.
class NetworkUnreachableException implements Exception {
  /// Path to the API method that thrown the error.
  final String methodPath;

  NetworkUnreachableException(this.methodPath);

  @override
  String toString() {
    return "NetworkUnreachableException: API method [$methodPath] wasn't executed because you are probably not connected to the internet";
  }
}
