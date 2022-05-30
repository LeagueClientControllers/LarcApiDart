// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickStage _$PickStageFromJson(Map<String, dynamic> json) => PickStage(
      json['userPosition'] as int,
      json['bansPlanned'] as bool,
      (json['allies'] as List<dynamic>)
          .map((e) => Summoner.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['enemies'] as List<dynamic>)
          .map((e) => Summoner.fromJson(e as Map<String, dynamic>))
          .toList(),
      unixTimestampToDateTimeNullable(json['banRequested'] as int?),
      unixTimestampToDateTimeNullable(json['pickRequested'] as int?),
      unixTimestampToDateTimeNullable(json['prepareStageStarted'] as int?),
      $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']),
      json['isActorAnAlly'] as bool?,
      json['firstActorPosition'] as int?,
      json['actorsCount'] as int?,
    );

Map<String, dynamic> _$PickStageToJson(PickStage instance) => <String, dynamic>{
      'userPosition': instance.userPosition,
      'bansPlanned': instance.bansPlanned,
      'banRequested': dateTimeToUnixTimestampNullable(instance.banRequested),
      'pickRequested': dateTimeToUnixTimestampNullable(instance.pickRequested),
      'prepareStageStarted':
          dateTimeToUnixTimestampNullable(instance.prepareStageStarted),
      'actionType': _$ActionTypeEnumMap[instance.actionType],
      'isActorAnAlly': instance.isActorAnAlly,
      'firstActorPosition': instance.firstActorPosition,
      'actorsCount': instance.actorsCount,
      'allies': instance.allies,
      'enemies': instance.enemies,
    };

const _$ActionTypeEnumMap = {
  ActionType.Pick: 'Pick',
  ActionType.Ban: 'Ban',
};
