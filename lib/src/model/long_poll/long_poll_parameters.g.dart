// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long_poll_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LongPollParameters _$LongPollParametersFromJson(Map<String, dynamic> json) =>
    LongPollParameters(
      json['lastEventId'] as int,
      timeout: json['timeout'] as int? ?? 60,
    );

Map<String, dynamic> _$LongPollParametersToJson(LongPollParameters instance) =>
    <String, dynamic>{
      'lastEventId': instance.lastEventId,
      'timeout': instance.timeout,
    };
