// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse()
  ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
  ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
  ..errorMessage = json['errorMessage'] as String?;

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
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
