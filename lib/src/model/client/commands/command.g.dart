// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Command _$CommandFromJson(Map<String, dynamic> json) => Command()
  ..id = json['id'] as int
  ..name = $enumDecode(_$CommandNameEnumMap, json['name'])
  ..args = json['args'];

Map<String, dynamic> _$CommandToJson(Command instance) => <String, dynamic>{
      'id': instance.id,
      'name': _$CommandNameEnumMap[instance.name],
      'args': instance.args,
    };

const _$CommandNameEnumMap = {
  CommandName.acceptMatch: 'AcceptMatch',
  CommandName.declineMatch: 'DeclineMatch',
};
