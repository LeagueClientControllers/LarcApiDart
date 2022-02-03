// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileInfoResponse _$ProfileInfoResponseFromJson(Map<String, dynamic> json) =>
    ProfileInfoResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..profile = ProfileInfo.fromJson(json['profile'] as Map<String, dynamic>);

Map<String, dynamic> _$ProfileInfoResponseToJson(
        ProfileInfoResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'profile': instance.profile,
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
