// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_team_leader_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeTeamLeaderParameters _$ChangeTeamLeaderParametersFromJson(
        Map<String, dynamic> json) =>
    ChangeTeamLeaderParameters(
      json['teamId'] as int,
      json['newLeaderId'] as int,
    );

Map<String, dynamic> _$ChangeTeamLeaderParametersToJson(
        ChangeTeamLeaderParameters instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'newLeaderId': instance.newLeaderId,
    };
