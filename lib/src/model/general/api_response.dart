import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';

part 'api_response.g.dart';

/// Base class for all the response models
/// Contains basic response fields
@JsonSerializable()
class ApiResponse implements BaseJsonSerializable<ApiResponse>
{
	/// Result of the response
	@JsonKey(name: "result")
	late ExecutionResult result;

	/// Name of the error occurred during execution
	@JsonKey(name: "errorName")
	MethodError? errorName;

	/// Message of the error occurred during execution
	@JsonKey(name: "errorMessage")
	String? errorMessage;

	ApiResponse(): super();

	@override
	factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
