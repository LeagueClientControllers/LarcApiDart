// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) => ClientEvent(
      $enumDecode(_$ClientEventTypeEnumMap, json['type']),
      json['controllerId'] as int,
      (json['changes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$ClientEventToJson(ClientEvent instance) =>
    <String, dynamic>{
      'type': _$ClientEventTypeEnumMap[instance.type],
      'controllerId': instance.controllerId,
      'changes': instance.changes,
    };

const _$ClientEventTypeEnumMap = {
  ClientEventType.GameflowPhaseChanged: 'GameflowPhaseChanged',
};
