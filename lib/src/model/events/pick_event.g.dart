// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickEvent _$PickEventFromJson(Map<String, dynamic> json) => PickEvent(
      $enumDecode(_$PickEventTypeEnumMap, json['type']),
      json['controllerId'] as int,
      json['userPickPosition'] as int?,
      (json['alliesRoles'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RoleEnumMap, e))
          .toList(),
      json['enemiesCount'] as int?,
      unixTimestampToDateTimeNullable(json['requestedAt'] as int?),
      $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']),
      json['isActorAnAlly'] as bool?,
      json['actorsRange'] == null
          ? null
          : ValueRange.fromJson(json['actorsRange'] as Map<String, dynamic>),
      json['actorPosition'] as int?,
      json['championId'] as int?,
      json['completed'] as bool?,
      json['skinId'] as int?,
    );

Map<String, dynamic> _$PickEventToJson(PickEvent instance) => <String, dynamic>{
      'type': _$PickEventTypeEnumMap[instance.type],
      'controllerId': instance.controllerId,
      'userPickPosition': instance.userPickPosition,
      'alliesRoles':
          instance.alliesRoles?.map((e) => _$RoleEnumMap[e]).toList(),
      'enemiesCount': instance.enemiesCount,
      'requestedAt': dateTimeToUnixTimestampNullable(instance.requestedAt),
      'actionType': _$ActionTypeEnumMap[instance.actionType],
      'isActorAnAlly': instance.isActorAnAlly,
      'actorsRange': instance.actorsRange,
      'actorPosition': instance.actorPosition,
      'championId': instance.championId,
      'completed': instance.completed,
      'skinId': instance.skinId,
    };

const _$PickEventTypeEnumMap = {
  PickEventType.SkinChanged: 'SkinChanged',
  PickEventType.ActionChanged: 'ActionChanged',
  PickEventType.ActionRequested: 'ActionRequested',
  PickEventType.ChampSelectEnded: 'ChampSelectEnded',
  PickEventType.ChampSelectStarted: 'ChampSelectStarted',
};

const _$RoleEnumMap = {
  Role.Top: 'Top',
  Role.Jungle: 'Jungle',
  Role.Mid: 'Mid',
  Role.Bottom: 'Bottom',
  Role.Support: 'Support',
  Role.Any: 'Any',
};

const _$ActionTypeEnumMap = {
  ActionType.Pick: 'Pick',
  ActionType.Ban: 'Ban',
};
