// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommandEvent _$CommandEventFromJson(Map<String, dynamic> json) => CommandEvent(
      $enumDecode(_$CommandEventTypeEnumMap, json['type']),
      json['command'] == null
          ? null
          : Command.fromJson(json['command'] as Map<String, dynamic>),
      json['commandId'] as int?,
      json['commandResult'] == null
          ? null
          : CommandResult.fromJson(
              json['commandResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommandEventToJson(CommandEvent instance) =>
    <String, dynamic>{
      'type': _$CommandEventTypeEnumMap[instance.type],
      'command': instance.command,
      'commandId': instance.commandId,
      'commandResult': instance.commandResult,
    };

const _$CommandEventTypeEnumMap = {
  CommandEventType.commandSent: 'CommandSent',
  CommandEventType.commandExecuted: 'CommandExecuted',
};
