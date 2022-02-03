// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long_poll_events_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LongPollEventsResponse _$LongPollEventsResponseFromJson(
        Map<String, dynamic> json) =>
    LongPollEventsResponse()
      ..result = $enumDecode(_$ExecutionResultEnumMap, json['result'])
      ..errorName = $enumDecodeNullable(_$MethodErrorEnumMap, json['errorName'])
      ..errorMessage = json['errorMessage'] as String?
      ..lastEventId = json['lastEventId'] as int
      ..events =
          EventCollection.fromJson(json['events'] as Map<String, dynamic>);

Map<String, dynamic> _$LongPollEventsResponseToJson(
        LongPollEventsResponse instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'errorName': _$MethodErrorEnumMap[instance.errorName],
      'errorMessage': instance.errorMessage,
      'lastEventId': instance.lastEventId,
      'events': instance.events,
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
