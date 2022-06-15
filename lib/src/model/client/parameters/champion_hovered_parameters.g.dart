// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'champion_hovered_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChampionHoveredParameters _$ChampionHoveredParametersFromJson(
        Map<String, dynamic> json) =>
    ChampionHoveredParameters(
      json['actorPosition'] as int,
      json['isActorAnAlly'] as bool,
      json['championId'] as int,
    );

Map<String, dynamic> _$ChampionHoveredParametersToJson(
        ChampionHoveredParameters instance) =>
    <String, dynamic>{
      'actorPosition': instance.actorPosition,
      'isActorAnAlly': instance.isActorAnAlly,
      'championId': instance.championId,
    };
