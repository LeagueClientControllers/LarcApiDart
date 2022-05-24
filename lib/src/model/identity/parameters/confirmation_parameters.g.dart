// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmation_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmationParameters _$ConfirmationParametersFromJson(
        Map<String, dynamic> json) =>
    ConfirmationParameters(
      json['accountId'] as int,
      json['code'] as String,
      json['deviceName'] as String,
      $enumDecode(_$DeviceTypeEnumMap, json['deviceType']),
    );

Map<String, dynamic> _$ConfirmationParametersToJson(
        ConfirmationParameters instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'code': instance.code,
      'deviceName': instance.deviceName,
      'deviceType': _$DeviceTypeEnumMap[instance.deviceType],
    };

const _$DeviceTypeEnumMap = {
  DeviceType.Controller: 'Controller',
  DeviceType.Phone: 'Phone',
};
