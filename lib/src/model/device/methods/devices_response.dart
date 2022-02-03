import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/device/device_model.dart';

part 'devices_response.g.dart';

/// Response of the /device/getDevices method
@JsonSerializable()
class DevicesResponse extends ApiResponse
{
	/// List of devices
	@JsonKey(name: "devices")
	late List<DeviceModel> devices;

	DevicesResponse(): super();

	@override
	factory DevicesResponse.fromJson(Map<String, dynamic> json) => _$DevicesResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$DevicesResponseToJson(this);
}
