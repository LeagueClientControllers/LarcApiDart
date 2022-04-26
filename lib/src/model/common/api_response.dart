//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/model.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'api_response.g.dart';

/// Response of any of the api methods.
@JsonSerializable()
class ApiResponse implements BaseJsonSerializable<ApiResponse> {
  ApiResponse() : super();

  @override
  factory ApiResponse.fromJson(Map<String, dynamic> json) => _$ApiResponseFromJson(json);

  /// Whether execution was successful.
  @JsonKey(name: "result")
  late ExecutionResult result;

  /// In case of error during execution
  /// specifies name of the error occurred.
  @JsonKey(name: "errorName")
  MethodError? errorName;

  /// In case of error during execution
  /// specifies message of the error occurred.
  @JsonKey(name: "errorMessage")
  String? errorMessage;

  @override
  Map<String, dynamic> toJson() => _$ApiResponseToJson(this);
}
