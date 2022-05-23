// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Command _$CommandFromJson(Map<String, dynamic> json) => Command(
      json['id'] as int,
      $enumDecode(_$CommandNameEnumMap, json['name']),
      json['args'] == null
          ? null
          : ChampionCommandArgs.fromJson(json['args'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommandToJson(Command instance) => <String, dynamic>{
      'id': instance.id,
      'name': _$CommandNameEnumMap[instance.name],
      'args': instance.args,
    };

const _$CommandNameEnumMap = {
  CommandName.DeclineMatch: 'DeclineMatch',
  CommandName.AcceptMatch: 'AcceptMatch',
  CommandName.HoverChampion: 'HoverChampion',
  CommandName.CompleteAction: 'CompleteAction',
};
