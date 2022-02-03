import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/device/device_type.dart';

part 'device_model.g.dart';

/// Represents remote device that is used to control league client
@JsonSerializable()
class DeviceModel implements BaseJsonSerializable<DeviceModel>
{
	/// Unique identifier of the device
	@JsonKey(name: "id")
	late int id;

	/// Type of the device
	@JsonKey(name: "type")
	late DeviceType type;

	/// Name of the device
	@JsonKey(name: "name")
	late String name;

	/// Whether device is online
	@JsonKey(name: "isOnline")
	late bool isOnline;

	DeviceModel(): super();

	@override
	factory DeviceModel.fromJson(Map<String, dynamic> json) => _$DeviceModelFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$DeviceModelToJson(this);
}
