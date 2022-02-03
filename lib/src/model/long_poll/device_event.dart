import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/long_poll/device_event_type.dart';

part 'device_event.g.dart';

/// Describes event that occurred with the device
@JsonSerializable()
class DeviceEvent implements BaseJsonSerializable<DeviceEvent>
{
	/// Type of the event
	@JsonKey(name: "type")
	late DeviceEventType type;

	/// If the device was added, stores id of the new device;
	/// If the device was changed, stores id of the device whose changes invoked this event;
	/// If the device was removed, stores id of the removed device;
	@JsonKey(name: "deviceId")
	late int deviceId;

	/// Stores changes of the device's properties
	@JsonKey(name: "changes")
	Map<String, Object>? changes;

	DeviceEvent(): super();

	@override
	factory DeviceEvent.fromJson(Map<String, dynamic> json) => _$DeviceEventFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$DeviceEventToJson(this);
}
