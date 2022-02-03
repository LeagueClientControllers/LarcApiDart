// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_member_role_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeMemberRoleParameters _$ChangeMemberRoleParametersFromJson(
        Map<String, dynamic> json) =>
    ChangeMemberRoleParameters(
      json['teamId'] as int,
      json['memberId'] as int,
      $enumDecode(_$RoleEnumMap, json['role']),
    );

Map<String, dynamic> _$ChangeMemberRoleParametersToJson(
        ChangeMemberRoleParameters instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'memberId': instance.memberId,
      'role': _$RoleEnumMap[instance.memberRole],
    };

const _$RoleEnumMap = {
  Role.top: 'Top',
  Role.jungle: 'Jungle',
  Role.mid: 'Mid',
  Role.bot: 'Bot',
  Role.support: 'Support',
};
