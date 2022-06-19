// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champ_select_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampSelectParameters _$ChampSelectParametersFromJson(
        Map<String, dynamic> json) =>
    ChampSelectParameters(
      json['userPosition'] as int,
      $enumDecode(_$QueueTypeEnumMap, json['queueType']),
      json['bansPlanned'] as bool,
      json['enemiesCount'] as int,
      (json['alliesRoles'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumMap, e))
          .toList(),
      (json['availableChampions'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$ChampSelectParametersToJson(
        ChampSelectParameters instance) =>
    <String, dynamic>{
      'userPosition': instance.userPosition,
      'queueType': _$QueueTypeEnumMap[instance.queueType],
      'bansPlanned': instance.bansPlanned,
      'enemiesCount': instance.enemiesCount,
      'alliesRoles': instance.alliesRoles.map((e) => _$RoleEnumMap[e]).toList(),
      'availableChampions': instance.availableChampions,
    };

const _$QueueTypeEnumMap = {
  QueueType.Custom: 'Custom',
  QueueType.DraftPick: 'DraftPick',
  QueueType.RankedSolo: 'RankedSolo',
  QueueType.BlindPick: 'BlindPick',
  QueueType.RankedFlex: 'RankedFlex',
};

const _$RoleEnumMap = {
  Role.Top: 'Top',
  Role.Jungle: 'Jungle',
  Role.Middle: 'Middle',
  Role.Bottom: 'Bottom',
  Role.Support: 'Support',
  Role.Any: 'Any',
};
