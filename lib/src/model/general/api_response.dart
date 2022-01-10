import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'api_response.g.dart';

/// Base response of any API method.
@JsonSerializable()
class ApiResponse implements BaseJsonSerializable<ApiResponse> {
  /// Result of the method execution.
  @JsonKey(name: "result")
  late ExecutionResult result;

  /// Error that occured during method execution if there was one.
  @JsonKey(name: "errorName")
  MethodError? error;

  /// Message of the error that occured during method execution if there was one.
  @JsonKey(name: "errorMessage")
  String? errorMessage;

  @override
  ApiResponse fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
