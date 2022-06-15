//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:async';

import 'package:dart_library_generator/utilities.dart';
import 'package:larc_api_dart/model.dart';

abstract class IClientCategory {
  /// Reports that the «League of Legends» client
  /// on controller's machine has been opened.
  @ControllerOnly()
  Future reportClientOpened();

  /// Reports that the «League of Legends» client
  /// on controller's machine has been closed.
  @ControllerOnly()
  Future reportClientClosed();

  /// Sets current game flow phase of the league client.
  ///
  /// [gameflowPhase] - Current league client game flow phase to set;
  /// [readyCheckStarted] - If game flow phase is ready check, this property determines timestamp when ready check was started in unix format;
  @ControllerOnly()
  Future setGameflowPhase(GameflowPhase gameflowPhase, DateTime? readyCheckStarted);

  /// Reports that champ select phase
  /// has been started in the «League of Legends» client.
  ///
  /// [userPosition] - Index of the user in allies array;
  /// [bansPlanned] -
  /// [enemiesCount] - Count of matched enemies;
  /// [alliesRoles] - Array of matched allies' roles
  @ControllerOnly()
  Future reportChampSelectStarted(int userPosition, bool bansPlanned, int enemiesCount, List<Role> alliesRoles);

  /// Reports that action was requested from one of the matched players.
  ///
  /// [requestedAt] - When this action was requested by league client;
  /// [isAllyAction] - Is action is prescribed for an ally or an opponent;
  /// [actorsRange] - Specifies range of actors the action was requested from ([0;;4]);
  /// [type] - Type of the action;
  @ControllerOnly()
  Future reportActionRequested(DateTime requestedAt, bool isAllyAction, ValueRange actorsRange, ActionType type);

  /// Reports that action was changed, i.e. champion was banned or picked.
  ///
  /// [actorPosition] - Position of the actor in ally or enemy team ([0;;4]);
  /// [isActorAnAlly] - Whether actor is on ally or enemy team;
  /// [championId] - ID of a picked or banned champion;
  @ControllerOnly()
  Future reportActionCompleted(int actorPosition, bool isActorAnAlly, int? championId);

  /// Reports that champion was hovered.
  ///
  /// [actorPosition] - Position of the actor in ally or enemy team ([0;;4]);
  /// [isActorAnAlly] - Whether actor is on ally or enemy team;
  /// [championId] - ID of the hovered champion;
  @ControllerOnly()
  Future reportChampionHovered(int actorPosition, bool isActorAnAlly, int championId);

  /// Reports that champion skin was changed by the one of the allies.
  ///
  /// [summonerPosition] - Position of player whose skin has been changed in allies array; [0;;4]
  /// [skinId] - New skin id;
  @ControllerOnly()
  Future reportSkinChanged(int summonerPosition, int skinId);

  /// Reports that champ select phase was completed or cancelled.
  @ControllerOnly()
  Future reportChampSelectEnded();

  /// Sends command to a client controller that is specified in the parameters to execute.
  ///
  /// [controllerId] - Determine which controller should execute this command;
  /// [commandName] - Command that should be sent to the client controller;
  /// [commandArgs] - Arguments of the command;
  @DeviceOnly()
  Future<int> sendCommand(int controllerId, CommandName commandName, ChampionCommandArgs? commandArgs);

  /// Sets result of the command after execution.
  ///
  /// [commandId] - Id of the command to set result of;
  /// [result] - Result of the command;
  @ControllerOnly()
  Future setCommandResult(int commandId, CommandResult result);
}
