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
    );

Map<String, dynamic> _$SendCommandParametersToJson(
        SendCommandParameters instance) =>
    <String, dynamic>{
      'controllerId': instance.controllerId,
      'commandName': _$CommandNameEnumMap[instance.commandName],
    };

const _$CommandNameEnumMap = {
  CommandName.acceptMatch: 'AcceptMatch',
  CommandName.declineMatch: 'DeclineMatch',
};
