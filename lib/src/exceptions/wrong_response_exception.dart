/// The exception that is thrown when the method response is incorrect
class WrongResponseException implements Exception {
  final String methodName;
  WrongResponseException(this.methodName);

  @override
  String toString() {
    return "WrongResponseException: API method [$methodName] was executed, but incorrect response was received";
  }
}
