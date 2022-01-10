class UserNotAuthorizedException implements Exception {
  final String methodName;
  UserNotAuthorizedException(this.methodName);

  @override
  String toString() {
    return "UserNotAuthorizedException: Attempted to execute API method [$methodName] that require user access token, but there's no one";
  }
}
