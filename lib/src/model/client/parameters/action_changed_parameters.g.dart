// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_changed_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionChangedParameters _$ActionChangedParametersFromJson(
        Map<String, dynamic> json) =>
    ActionChangedParameters(
      json['completed'] as bool,
      json['championId'] as int,
      json['actorPosition'] as int,
    );

Map<String, dynamic> _$ActionChangedParametersToJson(
        ActionChangedParameters instance) =>
    <String, dynamic>{
      'completed': instance.completed,
      'championId': instance.championId,
      'actorPosition': instance.actorPosition,
    };
