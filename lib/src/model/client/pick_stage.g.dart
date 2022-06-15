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
      unixTimestampToDateTimeNullable(json['actionRequestedAt'] as int?),
    );

Map<String, dynamic> _$PickStageToJson(PickStage instance) => <String, dynamic>{
      'userPosition': instance.userPosition,
      'bansPlanned': instance.bansPlanned,
      'actionRequestedAt':
          dateTimeToUnixTimestampNullable(instance.actionRequestedAt),
      'allies': instance.allies,
      'enemies': instance.enemies,
    };
