// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommandResult _$CommandResultFromJson(Map<String, dynamic> json) =>
    CommandResult(
      $enumDecode(_$ExecutionResultEnumMap, json['result']),
      error: $enumDecodeNullable(_$CommandErrorEnumMap, json['error']),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$CommandResultToJson(CommandResult instance) =>
    <String, dynamic>{
      'result': _$ExecutionResultEnumMap[instance.result],
      'error': _$CommandErrorEnumMap[instance.error],
      'errorMessage': instance.errorMessage,
    };

const _$ExecutionResultEnumMap = {
  ExecutionResult.okay: 'Okay',
  ExecutionResult.error: 'Error',
};

const _$CommandErrorEnumMap = {
  CommandError.readyCheckError: 'ReadyCheckError',
};
