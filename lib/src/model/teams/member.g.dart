// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Member _$MemberFromJson(Map<String, dynamic> json) => Member()
  ..id = json['id'] as int
  ..summonerId = json['summonerId'] as String
  ..teamRole = $enumDecode(_$RoleEnumMap, json['teamRole'])
  ..isLeader = json['isLeader'] as bool;

Map<String, dynamic> _$MemberToJson(Member instance) => <String, dynamic>{
      'id': instance.id,
      'summonerId': instance.summonerId,
      'teamRole': _$RoleEnumMap[instance.teamRole],
      'isLeader': instance.isLeader,
    };

const _$RoleEnumMap = {
  Role.top: 'Top',
  Role.jungle: 'Jungle',
  Role.mid: 'Mid',
  Role.bot: 'Bot',
  Role.support: 'Support',
};
