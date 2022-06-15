// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickEvent _$PickEventFromJson(Map<String, dynamic> json) => PickEvent(
      $enumDecode(_$PickEventTypeEnumMap, json['type']),
      json['controllerId'] as int,
      json['stage'] == null
          ? null
          : PickStage.fromJson(json['stage'] as Map<String, dynamic>),
      unixTimestampToDateTimeNullable(json['requestedAt'] as int?),
      $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']),
      json['actorsRange'] == null
          ? null
          : ValueRange.fromJson(json['actorsRange'] as Map<String, dynamic>),
      json['actorPosition'] as int?,
      json['isSummonerAnAlly'] as bool?,
      json['championId'] as int?,
      json['skinId'] as int?,
    );

Map<String, dynamic> _$PickEventToJson(PickEvent instance) => <String, dynamic>{
      'type': _$PickEventTypeEnumMap[instance.type],
      'controllerId': instance.controllerId,
      'stage': instance.stage,
      'requestedAt': dateTimeToUnixTimestampNullable(instance.requestedAt),
      'actionType': _$ActionTypeEnumMap[instance.actionType],
      'actorsRange': instance.actorsRange,
      'actorPosition': instance.summonerPosition,
      'isSummonerAnAlly': instance.isSummonerAnAlly,
      'championId': instance.championId,
      'skinId': instance.skinId,
    };

const _$PickEventTypeEnumMap = {
  PickEventType.SkinChanged: 'SkinChanged',
  PickEventType.ActionRequested: 'ActionRequested',
  PickEventType.ActionCompleted: 'ActionCompleted',
  PickEventType.ChampionHovered: 'ChampionHovered',
  PickEventType.ChampSelectEnded: 'ChampSelectEnded',
  PickEventType.ChampSelectStarted: 'ChampSelectStarted',
};

const _$ActionTypeEnumMap = {
  ActionType.Pick: 'Pick',
  ActionType.Ban: 'Ban',
};
