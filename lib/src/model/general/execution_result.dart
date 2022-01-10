import 'package:json_annotation/json_annotation.dart';

/// All possible results of the API method execution.
enum ExecutionResult {
  /// Normal result
  @JsonValue("Okey")
  okey,

  /// Result with the error details
  @JsonValue("Error")
  error
}
