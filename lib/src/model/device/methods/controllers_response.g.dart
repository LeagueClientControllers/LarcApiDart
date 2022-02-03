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
