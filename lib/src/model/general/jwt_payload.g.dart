// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JwtPayload _$JwtPayloadFromJson(Map<String, dynamic> json) => JwtPayload()
  ..userId = json['userId'] as int
  ..username = json['username'] as String
  ..deviceId = json['deviceId'] as int
  ..deviceType = $enumDecode(_$DeviceTypeEnumMap, json['deviceType'])
  ..issuedAt = json['iat'] as int
  ..expireAt = json['exp'] as int;

Map<String, dynamic> _$JwtPayloadToJson(JwtPayload instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'deviceId': instance.deviceId,
      'deviceType': _$DeviceTypeEnumMap[instance.deviceType],
      'iat': instance.issuedAt,
      'exp': instance.expireAt,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.controller: 'Controller',
  DeviceType.phone: 'Phone',
};
