// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) => ClientEvent()
  ..type = $enumDecode(_$ClientEventTypeEnumMap, json['type'])
  ..controllerId = json['controllerId'] as int
  ..changes = json['changes'] as Map<String, dynamic>?;

Map<String, dynamic> _$ClientEventToJson(ClientEvent instance) =>
    <String, dynamic>{
      'type': _$ClientEventTypeEnumMap[instance.type],
      'controllerId': instance.controllerId,
      'changes': instance.changes,
    };

const _$ClientEventTypeEnumMap = {
  ClientEventType.gameflowPhaseChanged: 'GameflowPhaseChanged',
};