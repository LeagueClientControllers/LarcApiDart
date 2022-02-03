import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/device/client_controller.dart';

part 'controller_response.g.dart';

/// Response of the /device/getControllerById method.
@JsonSerializable()
class ControllerResponse extends ApiResponse
{
	
	@JsonKey(name: "controller")
	late ClientController controller;

	ControllerResponse(): super();

	@override
	factory ControllerResponse.fromJson(Map<String, dynamic> json) => _$ControllerResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ControllerResponseToJson(this);
}
