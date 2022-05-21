// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_requested_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionRequestedParameters _$ActionRequestedParametersFromJson(
        Map<String, dynamic> json) =>
    ActionRequestedParameters(
      unixTimestampToDateTime(json['requestedAt'] as int),
      json['isAllyAction'] as bool,
      json['firstActorPosition'] as int,
      json['actorsCount'] as int,
      $enumDecode(_$ActionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$ActionRequestedParametersToJson(
        ActionRequestedParameters instance) =>
    <String, dynamic>{
      'requestedAt': dateTimeToUnixTimestamp(instance.requestedAt),
      'isAllyAction': instance.isAllyAction,
      'firstActorPosition': instance.firstActorPosition,
      'actorsCount': instance.actorsCount,
      'type': _$ActionTypeEnumMap[instance.type],
    };

const _$ActionTypeEnumMap = {
  ActionType.Pick: 'Pick',
  ActionType.Ban: 'Ban',
};
