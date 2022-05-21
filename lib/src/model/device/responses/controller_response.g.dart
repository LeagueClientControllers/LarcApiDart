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
