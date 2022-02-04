// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientController _$ClientControllerFromJson(Map<String, dynamic> json) =>
    ClientController()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..isOnline = json['isOnline'] as bool
      ..gameflowPhase =
          $enumDecodeNullable(_$GameflowPhaseEnumMap, json['gameflowPhase']);

Map<String, dynamic> _$ClientControllerToJson(ClientController instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isOnline': instance.isOnline,
      'gameflowPhase': _$GameflowPhaseEnumMap[instance.gameflowPhase],
    };

const _$GameflowPhaseEnumMap = {
  GameflowPhase.none: 'None',
  GameflowPhase.lobby: 'Lobby',
  GameflowPhase.matchmaking: 'Matchmaking',
  GameflowPhase.checkedIntoTournament: 'CheckedIntoTournament',
  GameflowPhase.readyCheck: 'ReadyCheck',
  GameflowPhase.champSelect: 'ChampSelect',
  GameflowPhase.gameStart: 'GameStart',
  GameflowPhase.failedToLaunch: 'FailedToLaunch',
  GameflowPhase.inProgress: 'InProgress',
  GameflowPhase.reconnect: 'Reconnect',
  GameflowPhase.waitingForStats: 'WaitingForStats',
  GameflowPhase.preEndOfGame: 'PreEndOfGame',
  GameflowPhase.endOfGame: 'EndOfGame',
  GameflowPhase.terminatedInError: 'TerminatedInError ',
};
