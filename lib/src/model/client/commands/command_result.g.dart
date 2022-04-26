// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommandResult _$CommandResultFromJson(Map<String, dynamic> json) =>
    CommandResult(
      $enumDecode(_$ExecutionResultEnumMap, json['result']),
      $enumDecodeNullable(_$CommandErrorEnumMap, json['error']),
      json['errorMessage'] as String?,
      json['info'],
    );

Map<String, dynamic> _$CommandResultToJson(CommandResult instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'error': _$CommandErrorEnumMap[instance.error],
      'errorMessage': instance.errorMessage,
      'info': instance.info,
    };

const _$ExecutionResultEnumMap = {
  ExecutionResult.Okay: 'Okay',
  ExecutionResult.Error: 'Error',
};

const _$CommandErrorEnumMap = {
  CommandError.ReadyCheckError: 'ReadyCheckError',
};
