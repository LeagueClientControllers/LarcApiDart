// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_team_member_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteTeamMemberParameters _$DeleteTeamMemberParametersFromJson(
        Map<String, dynamic> json) =>
    DeleteTeamMemberParameters(
      json['teamId'] as int,
      json['memberId'] as int,
    );

Map<String, dynamic> _$DeleteTeamMemberParametersToJson(
        DeleteTeamMemberParameters instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'memberId': instance.memberId,
    };
