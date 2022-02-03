import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/device/device_model.dart';

part 'device_response.g.dart';

/// Response containing one device
@JsonSerializable()
class DeviceResponse extends ApiResponse
{
	
	@JsonKey(name: "device")
	late DeviceModel device;

	DeviceResponse(): super();

	@override
	factory DeviceResponse.fromJson(Map<String, dynamic> json) => _$DeviceResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$DeviceResponseToJson(this);
}
