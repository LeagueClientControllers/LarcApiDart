// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceEvent _$DeviceEventFromJson(Map<String, dynamic> json) => DeviceEvent(
      $enumDecode(_$DeviceEventTypeEnumMap, json['type']),
      json['deviceId'] as int,
      (json['changes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$DeviceEventToJson(DeviceEvent instance) =>
    <String, dynamic>{
      'type': _$DeviceEventTypeEnumMap[instance.type],
      'deviceId': instance.deviceId,
      'changes': instance.changes,
    };

const _$DeviceEventTypeEnumMap = {
  DeviceEventType.DeviceAdded: 'DeviceAdded',
  DeviceEventType.DeviceChanged: 'DeviceChanged',
  DeviceEventType.DeviceRemoved: 'DeviceRemoved',
};
