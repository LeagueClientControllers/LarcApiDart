// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'long_poll_events_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LongPollEventsParameters _$LongPollEventsParametersFromJson(
        Map<String, dynamic> json) =>
    LongPollEventsParameters(
      json['lastEventId'] as int,
      timeout: json['timeout'] as int? ?? 60,
    );

Map<String, dynamic> _$LongPollEventsParametersToJson(
        LongPollEventsParameters instance) =>
    <String, dynamic>{
      'lastEventId': instance.lastEventId,
      'timeout': instance.timeout,
    };
