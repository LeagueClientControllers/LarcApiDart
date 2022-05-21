// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DevicesResponse _$DevicesResponseFromJson(Map<String, dynamic> json) =>
    DevicesResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..devices = (json['devices'] as List<dynamic>)
          .map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DevicesResponseToJson(DevicesResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'devices': instance.devices,
    };

const _$ExecutionResultEnumMap = {
  ExecutionResult.Okay: 'Okay',
  ExecutionResult.Error: 'Error',
};

const _$MethodErrorEnumMap = {
  MethodError.InternalServerError: 'InternalServerError',
  MethodError.WrongApiKey: 'WrongApiKeyError',
  MethodError.WrongAccessToken: 'WrongAccessTokenError',
  MethodError.AccessTokenNotProvided: 'AccessTokenNotProvidedError',
  MethodError.WrongNicknameEmailOrPassword: 'WrongNicknameEmailOrPasswordError',
  MethodError.JsonParsing: 'JsonParsingError',
  MethodError.MissingMethodParameters: 'MissingMethodParametersError',
  MethodError.InvalidCommandParameters: 'InvalidCommandParametersError',
  MethodError.InvalidMethodParameter: 'InvalidMethodParameterError',
  MethodError.InvalidOperation: 'InvalidOperationError',
  MethodError.ListenerIsAlreadyRegistered: 'ListenerIsAlreadyRegisteredError',
};
