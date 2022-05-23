// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_command_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendCommandParameters _$SendCommandParametersFromJson(
        Map<String, dynamic> json) =>
    SendCommandParameters(
      json['controllerId'] as int,
      $enumDecode(_$CommandNameEnumMap, json['commandName']),
      json['commandArgs'] == null
          ? null
          : ChampionCommandArgs.fromJson(
              json['commandArgs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SendCommandParametersToJson(
        SendCommandParameters instance) =>
    <String, dynamic>{
      'controllerId': instance.controllerId,
      'commandName': _$CommandNameEnumMap[instance.commandName],
      'commandArgs': instance.commandArgs,
    };

const _$CommandNameEnumMap = {
  CommandName.DeclineMatch: 'DeclineMatch',
  CommandName.AcceptMatch: 'AcceptMatch',
  CommandName.HoverChampion: 'HoverChampion',
  CommandName.CompleteAction: 'CompleteAction',
};
