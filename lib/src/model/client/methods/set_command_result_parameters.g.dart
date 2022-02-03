// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_command_result_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetCommandResultParameters _$SetCommandResultParametersFromJson(
        Map<String, dynamic> json) =>
    SetCommandResultParameters(
      json['commandId'] as int,
      CommandResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SetCommandResultParametersToJson(
        SetCommandResultParameters instance) =>
    <String, dynamic>{
      'commandId': instance.commandId,
      'result': instance.result,
    };
