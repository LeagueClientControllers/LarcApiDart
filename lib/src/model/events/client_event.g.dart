// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientEvent _$ClientEventFromJson(Map<String, dynamic> json) => ClientEvent(
      $enumDecode(_$ClientEventTypeEnumMap, json['type']),
      json['controllerId'] as int,
      $enumDecodeNullable(_$GameflowPhaseEnumMap, json['gameflowPhase']),
      unixTimestampToDateTimeNullable(json['readyCheckStarted'] as int?),
    );

Map<String, dynamic> _$ClientEventToJson(ClientEvent instance) =>
    <String, dynamic>{
      'type': _$ClientEventTypeEnumMap[instance.type],
      'controllerId': instance.controllerId,
      'gameflowPhase': _$GameflowPhaseEnumMap[instance.gameflowPhase],
      'readyCheckStarted':
          dateTimeToUnixTimestampNullable(instance.readyCheckStarted),
    };

const _$ClientEventTypeEnumMap = {
  ClientEventType.ClientOpened: 'ClientOpened',
  ClientEventType.ClientClosed: 'ClientClosed',
  ClientEventType.GameflowPhaseChanged: 'GameflowPhaseChanged',
};

const _$GameflowPhaseEnumMap = {
  GameflowPhase.None: 'None',
  GameflowPhase.Lobby: 'Lobby',
  GameflowPhase.Matchmaking: 'Matchmaking',
  GameflowPhase.CheckedIntoTournament: 'CheckedIntoTournament',
  GameflowPhase.ReadyCheck: 'ReadyCheck',
  GameflowPhase.ChampSelect: 'ChampSelect',
  GameflowPhase.GameStart: 'GameStart',
  GameflowPhase.FailedToLaunch: 'FailedToLaunch',
  GameflowPhase.InProgress: 'InProgress',
  GameflowPhase.Reconnect: 'Reconnect',
  GameflowPhase.WaitingForStats: 'WaitingForStats',
  GameflowPhase.PreEndOfGame: 'PreEndOfGame',
  GameflowPhase.EndOfGame: 'EndOfGame',
  GameflowPhase.TerminatedInError: 'TerminatedInError',
};
