// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickStage _$PickStageFromJson(Map<String, dynamic> json) => PickStage(
      json['userPosition'] as int,
      (json['allies'] as List<dynamic>)
          .map((e) => Summoner.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['enemies'] as List<dynamic>)
          .map((e) => Summoner.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['banRequested'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      (json['pickRequested'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      unixTimestampToDateTimeNullable(json['prepareStageStarted'] as int?),
      (json['actionType'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ActionTypeEnumMap, e))
          .toList(),
      (json['isActorAnAlly'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      (json['firstActorPosition'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      (json['actorsCount'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$PickStageToJson(PickStage instance) => <String, dynamic>{
      'userPosition': instance.userPosition,
      'banRequested':
          instance.banRequested?.map((e) => e.toIso8601String()).toList(),
      'pickRequested':
          instance.pickRequested?.map((e) => e.toIso8601String()).toList(),
      'prepareStageStarted':
          dateTimeToUnixTimestampNullable(instance.prepareStageStarted),
      'actionType':
          instance.actionType?.map((e) => _$ActionTypeEnumMap[e]).toList(),
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
