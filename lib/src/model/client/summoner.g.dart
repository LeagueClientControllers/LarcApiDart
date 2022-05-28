// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summoner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Summoner _$SummonerFromJson(Map<String, dynamic> json) => Summoner(
      $enumDecode(_$RoleEnumMap, json['assignedRole']),
      json['pickedChampionId'] as int,
      json['bannedChampionId'] as int,
      json['pickCompleted'] as bool,
      json['banCompleted'] as bool,
      json['skinId'] as int,
    );

Map<String, dynamic> _$SummonerToJson(Summoner instance) => <String, dynamic>{
      'assignedRole': _$RoleEnumMap[instance.assignedRole],
      'pickedChampionId': instance.pickedChampionId,
      'bannedChampionId': instance.bannedChampionId,
      'pickCompleted': instance.pickCompleted,
      'banCompleted': instance.banCompleted,
      'skinId': instance.skinId,
    };

const _$RoleEnumMap = {
  Role.Top: 'Top',
  Role.Jungle: 'Jungle',
  Role.Middle: 'Middle',
  Role.Bottom: 'Bottom',
  Role.Support: 'Support',
  Role.Any: 'Any',
};
