// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientController _$ClientControllerFromJson(Map<String, dynamic> json) =>
    ClientController(
      json['id'] as int,
      json['name'] as String,
      json['isOnline'] as bool,
      $enumDecodeNullable(_$GameflowPhaseEnumMap, json['gameflowPhase']),
      json['readyCheckStarted'] == null
          ? null
          : DateTime.parse(json['readyCheckStarted'] as String),
    );

Map<String, dynamic> _$ClientControllerToJson(ClientController instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isOnline': instance.isOnline,
      'gameflowPhase': _$GameflowPhaseEnumMap[instance.gameflowPhase],
      'readyCheckStarted': instance.readyCheckStarted?.toIso8601String(),
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
