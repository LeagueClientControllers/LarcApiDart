// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTeamResponse _$CreateTeamResponseFromJson(Map<String, dynamic> json) =>
    CreateTeamResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..teamId = json['teamId'] as int;

Map<String, dynamic> _$CreateTeamResponseToJson(CreateTeamResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'teamId': instance.teamId,
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
