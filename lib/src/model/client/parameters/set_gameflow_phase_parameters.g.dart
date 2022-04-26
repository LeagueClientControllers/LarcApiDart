// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_gameflow_phase_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SetGameflowPhaseParameters _$SetGameflowPhaseParametersFromJson(
        Map<String, dynamic> json) =>
    SetGameflowPhaseParameters(
      $enumDecodeNullable(_$GameflowPhaseEnumMap, json['gameflowPhase']),
      json['readyCheckStarted'] as int?,
    );

Map<String, dynamic> _$SetGameflowPhaseParametersToJson(
        SetGameflowPhaseParameters instance) =>
    <String, dynamic>{
      'gameflowPhase': _$GameflowPhaseEnumMap[instance.gameflowPhase],
      'readyCheckStarted': instance.readyCheckStarted,
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
