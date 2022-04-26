// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommandResponse _$CommandResponseFromJson(Map<String, dynamic> json) =>
    CommandResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..commandId = json['commandId'] as int;

Map<String, dynamic> _$CommandResponseToJson(CommandResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'commandId': instance.commandId,
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
  MethodError.ListenerIsAlreadyRegistered: 'ListenerIsAlreadyRegisteredError',
};
