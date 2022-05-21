// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champ_select_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampSelectParameters _$ChampSelectParametersFromJson(
        Map<String, dynamic> json) =>
    ChampSelectParameters(
      json['userPosition'] as int,
      json['enemiesCount'] as int,
      (json['alliesRoles'] as List<dynamic>)
          .map((e) => $enumDecode(_$RoleEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$ChampSelectParametersToJson(
        ChampSelectParameters instance) =>
    <String, dynamic>{
      'userPosition': instance.userPosition,
      'enemiesCount': instance.enemiesCount,
      'alliesRoles': instance.alliesRoles.map((e) => _$RoleEnumMap[e]).toList(),
    };

const _$RoleEnumMap = {
  Role.Top: 'Top',
  Role.Jungle: 'Jungle',
  Role.Mid: 'Mid',
  Role.Bottom: 'Bottom',
  Role.Support: 'Support',
  Role.Any: 'Any',
};
