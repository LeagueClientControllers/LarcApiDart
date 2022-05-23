// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventMessage _$EventMessageFromJson(Map<String, dynamic> json) => EventMessage(
      $enumDecode(_$EventTypeEnumMap, json['eventType']),
      json['event'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$EventMessageToJson(EventMessage instance) =>
    <String, dynamic>{
      'eventType': _$EventTypeEnumMap[instance.eventType],
      'event': instance.event,
    };

const _$EventTypeEnumMap = {
  EventType.Device: 'Device',
  EventType.Client: 'Client',
  EventType.Pick: 'Pick',
  EventType.Command: 'Command',
};
