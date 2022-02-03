import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/device/client_controller.dart';

part 'controllers_response.g.dart';

/// Response of the /device/getControllers method.
@JsonSerializable()
class ControllersResponse extends ApiResponse
{
	
	@JsonKey(name: "controllers")
	late List<ClientController> controllers;

	ControllersResponse(): super();

	@override
	factory ControllersResponse.fromJson(Map<String, dynamic> json) => _$ControllersResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ControllersResponseToJson(this);
}
