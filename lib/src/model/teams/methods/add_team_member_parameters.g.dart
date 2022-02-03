// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_team_member_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddTeamMemberParameters _$AddTeamMemberParametersFromJson(
        Map<String, dynamic> json) =>
    AddTeamMemberParameters(
      json['teamId'] as int,
      json['memberSummonerId'] as String,
      $enumDecode(_$RoleEnumMap, json['memberRole']),
    );

Map<String, dynamic> _$AddTeamMemberParametersToJson(
        AddTeamMemberParameters instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'memberSummonerId': instance.memberSummonerId,
      'memberRole': _$RoleEnumMap[instance.memberRole],
    };

const _$RoleEnumMap = {
  Role.top: 'Top',
  Role.jungle: 'Jungle',
  Role.mid: 'Mid',
  Role.bot: 'Bot',
  Role.support: 'Support',
};
