// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_team_name_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeTeamNameParameters _$ChangeTeamNameParametersFromJson(
        Map<String, dynamic> json) =>
    ChangeTeamNameParameters(
      json['teamId'] as int,
      json['teamName'] as String,
    );

Map<String, dynamic> _$ChangeTeamNameParametersToJson(
        ChangeTeamNameParameters instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'teamName': instance.teamName,
    };
