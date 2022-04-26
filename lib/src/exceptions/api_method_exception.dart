import 'package:lcc_api_dart/model.dart';

/// The exception that is thrown when api method was executed with errors.
class ApiMethodException implements Exception {
  /// Path to the API method that thrown the error.
  final String methodPath;

  /// Error occured during execution of the method.
  final MethodError error;

  /// Message of the error occurred during execution of the method.
  final String errorMessage;

  ApiMethodException(this.methodPath, this.error, this.errorMessage);

   @override
  String toString() {
    return "ApiMethodException: API method [$methodPath] was executed with the error - [$error]. Error message - $errorMessage";
  }
}
