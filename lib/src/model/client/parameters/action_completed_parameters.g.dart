// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_completed_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionCompletedParameters _$ActionCompletedParametersFromJson(
        Map<String, dynamic> json) =>
    ActionCompletedParameters(
      json['actorPosition'] as int,
      json['isActorAnAlly'] as bool,
      json['championId'] as int?,
    );

Map<String, dynamic> _$ActionCompletedParametersToJson(
        ActionCompletedParameters instance) =>
    <String, dynamic>{
      'actorPosition': instance.actorPosition,
      'isActorAnAlly': instance.isActorAnAlly,
      'championId': instance.championId,
    };
