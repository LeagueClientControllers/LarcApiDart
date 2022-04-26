// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JwtPayload _$JwtPayloadFromJson(Map<String, dynamic> json) => JwtPayload(
      json['userId'] as int,
      json['username'] as String,
      json['deviceId'] as int,
      $enumDecode(_$DeviceTypeEnumMap, json['deviceType']),
      json['iat'] as int,
      json['exp'] as int,
    );

Map<String, dynamic> _$JwtPayloadToJson(JwtPayload instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'deviceId': instance.deviceId,
      'deviceType': _$DeviceTypeEnumMap[instance.deviceType],
      'iat': instance.iat,
      'exp': instance.exp,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.Controller: 'Controller',
  DeviceType.Phone: 'Phone',
};
