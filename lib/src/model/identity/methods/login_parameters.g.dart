// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParameters _$LoginParametersFromJson(Map<String, dynamic> json) =>
    LoginParameters(
      json['login'] as String,
      json['password'] as String,
      $enumDecode(_$DeviceTypeEnumMap, json['deviceType']),
      json['deviceName'] as String,
    );

Map<String, dynamic> _$LoginParametersToJson(LoginParameters instance) =>
    <String, dynamic>{
      'deviceType': _$DeviceTypeEnumMap[instance.deviceType],
      'deviceName': instance.deviceName,
      'login': instance.login,
      'password': instance.password,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.controller: 'Controller',
  DeviceType.phone: 'Phone',
};
