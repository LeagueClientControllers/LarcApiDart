//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'package:json_annotation/json_annotation.dart' as _i1;
import 'package:json_annotation/json_annotation.dart';

/// Indicates phase of the game flow in league client.
enum GameflowPhase {
  /// User wandering around client.
  @_i1.JsonValue("None")
  None,

  /// User in the lobby.
  @_i1.JsonValue("Lobby")
  Lobby,

  /// Matchmaking in progress.
  @_i1.JsonValue("Matchmaking")
  Matchmaking,

  ///
  @_i1.JsonValue("CheckedIntoTournament")
  CheckedIntoTournament,

  /// User should accept or decline match.
  @_i1.JsonValue("ReadyCheck")
  ReadyCheck,

  /// User selecting and/or banning champions.
  @_i1.JsonValue("ChampSelect")
  ChampSelect,

  ///
  @_i1.JsonValue("GameStart")
  GameStart,

  ///
  @_i1.JsonValue("FailedToLaunch")
  FailedToLaunch,

  /// Game in progress.
  @_i1.JsonValue("InProgress")
  InProgress,

  ///
  @_i1.JsonValue("Reconnect")
  Reconnect,

  /// Waiting for post game stats.
  @_i1.JsonValue("WaitingForStats")
  WaitingForStats,

  /// When game is ended but user has not returned to the lobby yet.
  @_i1.JsonValue("PreEndOfGame")
  PreEndOfGame,

  /// Game is ended.
  @_i1.JsonValue("EndOfGame")
  EndOfGame,

  ///
  @_i1.JsonValue("TerminatedInError")
  TerminatedInError
}
