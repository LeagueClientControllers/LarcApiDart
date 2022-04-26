// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controllers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ControllersResponse _$ControllersResponseFromJson(Map<String, dynamic> json) =>
    ControllersResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..controllers = (json['controllers'] as List<dynamic>)
          .map((e) => ClientController.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ControllersResponseToJson(
        ControllersResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'controllers': instance.controllers,
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
