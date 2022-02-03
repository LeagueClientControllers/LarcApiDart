// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => DeviceModel()
  ..id = json['id'] as int
  ..type = $enumDecode(_$DeviceTypeEnumMap, json['type'])
  ..name = json['name'] as String
  ..isOnline = json['isOnline'] as bool;

Map<String, dynamic> _$DeviceModelToJson(DeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$DeviceTypeEnumMap[instance.type],
      'name': instance.name,
      'isOnline': instance.isOnline,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.controller: 'Controller',
  DeviceType.phone: 'Phone',
};
