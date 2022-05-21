// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueClient _$LeagueClientFromJson(Map<String, dynamic> json) => LeagueClient(
      $enumDecodeNullable(_$GameflowPhaseEnumMap, json['gameflowPhase']),
      unixTimestampToDateTimeNullable(json['readyCheckStarted'] as int?),
      json['pick'] == null
          ? null
          : PickStage.fromJson(json['pick'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeagueClientToJson(LeagueClient instance) =>
    <String, dynamic>{
      'gameflowPhase': _$GameflowPhaseEnumMap[instance.gameflowPhase],
      'readyCheckStarted':
          dateTimeToUnixTimestampNullable(instance.readyCheckStarted),
      'pick': instance.pick,
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
