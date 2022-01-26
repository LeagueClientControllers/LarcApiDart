import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'device_event.g.dart';

/// Describes an event that is related to the device.
@JsonSerializable()
class DeviceEvent extends BaseJsonSerializable<DeviceEvent> {
  /// Type of the event.
  late DeviceEventType type;

  /// If the device was added, stores id of the new device;
  /// If the device was changed, stores id of the device whose changes invoked this event;
  /// If the device was removed, stores id of the removed device.
  late int deviceId;

  /// If the device was changed, stores names of the properties
  /// that has been changed and properties' new values; otherwise null.
  Map<String, Object>? changes;

  @override
  DeviceEvent fromJson(Map<String, dynamic> json) => _$DeviceEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceEventToJson(this);
}

/// Indicates type of the event.
enum DeviceEventType {
  /// New device has been added.
  @JsonValue("DeviceAdded")
  deviceAdded,

  /// Some of device properties has been changed.
  @JsonValue("DeviceChanged")
  deviceChanged,

  /// Device has been removed.
  @JsonValue("DeviceRemoved")
  deviceRemoved
}
