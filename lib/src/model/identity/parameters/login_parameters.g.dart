// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParameters _$LoginParametersFromJson(Map<String, dynamic> json) =>
    LoginParameters(
      json['login'] as String,
      json['password'] as String,
      json['deviceName'] as String,
      $enumDecode(_$DeviceTypeEnumMap, json['deviceType']),
    );

Map<String, dynamic> _$LoginParametersToJson(LoginParameters instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'deviceName': instance.deviceName,
      'deviceType': _$DeviceTypeEnumMap[instance.deviceType],
    };

const _$DeviceTypeEnumMap = {
  DeviceType.Controller: 'Controller',
  DeviceType.Phone: 'Phone',
};
