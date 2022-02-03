// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ControllerResponse _$ControllerResponseFromJson(Map<String, dynamic> json) =>
    ControllerResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..controller =
          ClientController.fromJson(json['controller'] as Map<String, dynamic>);

Map<String, dynamic> _$ControllerResponseToJson(ControllerResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'controller': instance.controller,
    };

const _$ExecutionResultEnumMap = {
  ExecutionResult.okay: 'Okay',
  ExecutionResult.error: 'Error',
};

const _$MethodErrorEnumMap = {
  MethodError.wrongApiKey: 'WrongApiKeyError',
  MethodError.wrongAccessToken: 'WrongAccessTokenError',
  MethodError.accessTokenNotProvided: 'AccessTokenNotProvidedError',
  MethodError.wrongNicknameEmailOrPassword: 'WrongNicknameEmailOrPasswordError',
  MethodError.jsonParsingError: 'JsonParsingError',
  MethodError.missingMethodParameters: 'MissingMethodParametersError',
  MethodError.invalidMethodParameter: 'InvalidMethodParameterError',
  MethodError.methodNotFound: 'MethodNotFoundError',
};
