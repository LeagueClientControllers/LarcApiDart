// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceEvent _$DeviceEventFromJson(Map<String, dynamic> json) => DeviceEvent()
  ..type = $enumDecode(_$DeviceEventTypeEnumMap, json['type'])
  ..deviceId = json['deviceId'] as int
  ..changes = (json['changes'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as Object),
  );

Map<String, dynamic> _$DeviceEventToJson(DeviceEvent instance) =>
    <String, dynamic>{
      'type': _$DeviceEventTypeEnumMap[instance.type],
      'deviceId': instance.deviceId,
      'changes': instance.changes,
    };

const _$DeviceEventTypeEnumMap = {
  DeviceEventType.deviceAdded: 'DeviceAdded',
  DeviceEventType.deviceChanged: 'DeviceChanged',
  DeviceEventType.deviceRemoved: 'DeviceRemoved',
};
