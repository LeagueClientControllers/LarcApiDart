//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'package:dart_library_generator/utilities.dart';
import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/utils/base_json_serializable.dart';

part 'device_event.g.dart';

/// Describes the event related to the device
@JsonSerializable()
class DeviceEvent implements BaseJsonSerializable<DeviceEvent> {
  DeviceEvent(this.type, this.deviceId, [this.changes]);

  @override
  factory DeviceEvent.fromJson(Map<String, dynamic> json) => _$DeviceEventFromJson(json);

  /// Type of the event
  @JsonKey(name: "type")
  DeviceEventType type;

  /// If the device was added, stores id of the new device;
  /// If the device was changed, stores id of the device whose changes invoked this event;
  /// If the device was removed, stores id of the removed device
  @JsonKey(name: "deviceId")
  int deviceId;

  /// If the device was changed, stores names of the properties
  /// that has been changed and properties' new values; otherwise null
  @JsonKey(name: "changes")
  Map<String, Object>? changes;

  @override
  Map<String, dynamic> toJson() => _$DeviceEventToJson(this);
}
