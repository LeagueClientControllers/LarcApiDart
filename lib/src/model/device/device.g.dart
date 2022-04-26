// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
      json['id'] as int,
      $enumDecode(_$DeviceTypeEnumMap, json['type']),
      json['name'] as String,
      json['isOnline'] as bool,
    );

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'type': _$DeviceTypeEnumMap[instance.type],
      'name': instance.name,
      'isOnline': instance.isOnline,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.Controller: 'Controller',
  DeviceType.Phone: 'Phone',
};
