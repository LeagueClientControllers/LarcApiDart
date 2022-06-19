// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickStage _$PickStageFromJson(Map<String, dynamic> json) => PickStage(
      $enumDecode(_$QueueTypeEnumMap, json['queueType']),
      json['userPosition'] as int,
      json['bansPlanned'] as bool,
      (json['availableChampions'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      (json['allies'] as List<dynamic>)
          .map((e) => Summoner.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['enemies'] as List<dynamic>)
          .map((e) => Summoner.fromJson(e as Map<String, dynamic>))
          .toList(),
      unixTimestampToDateTimeNullable(json['actionRequestedAt'] as int?),
      json['timeToAct'] as int?,
    );

Map<String, dynamic> _$PickStageToJson(PickStage instance) => <String, dynamic>{
      'queueType': _$QueueTypeEnumMap[instance.queueType],
      'userPosition': instance.userPosition,
      'bansPlanned': instance.bansPlanned,
      'actionRequestedAt':
          dateTimeToUnixTimestampNullable(instance.actionRequestedAt),
      'timeToAct': instance.timeToAct,
      'availableChampions': instance.availableChampions,
      'allies': instance.allies,
      'enemies': instance.enemies,
    };

const _$QueueTypeEnumMap = {
  QueueType.Custom: 'Custom',
  QueueType.DraftPick: 'DraftPick',
  QueueType.RankedSolo: 'RankedSolo',
  QueueType.BlindPick: 'BlindPick',
  QueueType.RankedFlex: 'RankedFlex',
};
