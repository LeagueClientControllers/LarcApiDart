//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:async';

import 'package:larc_api_dart/categories.dart';
import 'package:larc_api_dart/core.dart';
import 'package:larc_api_dart/exceptions.dart';
import 'package:larc_api_dart/model.dart';

class ClientCategory implements IClientCategory {
  ClientCategory(this._api);

  final ILarcApi _api;

  @override
  Future reportClientOpened() async {
    await _api.execute(r'client/reportClientOpened', withAccessToken: true);
  }

  @override
  Future reportClientClosed() async {
    await _api.execute(r'client/reportClientClosed', withAccessToken: true);
  }

  @override
  // TODO: Needs revision due to a new method signature
  Future setGameflowPhase(GameflowPhase gameflowPhase, DateTime? readyCheckStarted) async {
    final SetGameflowPhaseParameters parameters = SetGameflowPhaseParameters(gameflowPhase, readyCheckStarted);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'client/setGameflowPhase', parameters, withAccessToken: true);
  }

  @override
  Future reportChampSelectStarted(int userPosition, int enemiesCount, List<Role> alliesRoles) async {
    final ChampSelectParameters parameters = ChampSelectParameters(userPosition, enemiesCount, alliesRoles);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'client/reportChampSelectStarted', parameters, withAccessToken: true);
  }

  @override
  // TODO: Needs revision due to a new method signature
  Future reportActionRequested(DateTime requestedAt, bool isAllyAction, ValueRange actorsRange, ActionType type) async {
    final ActionRequestedParameters parameters =
        ActionRequestedParameters(requestedAt, isAllyAction, firstActorPosition, actorsCount, type);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'client/reportActionRequested', parameters, withAccessToken: true);
  }

  @override
  Future reportActionChanged(bool completed, int championId, int actorPosition) async {
    final ActionChangedParameters parameters = ActionChangedParameters(completed, championId, actorPosition);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'client/reportActionChanged', parameters, withAccessToken: true);
  }

  @override
  Future reportSkinChanged(int playerPosition, int skinId) async {
    final SkinChangedParameters parameters = SkinChangedParameters(playerPosition, skinId);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'client/reportSkinChanged', parameters, withAccessToken: true);
  }

  @override
  Future reportChampSelectEnded() async {
    await _api.execute(r'client/reportChampSelectEnded', withAccessToken: true);
  }

  @override
  // TODO: Needs revision due to a new method signature
  Future<int> sendCommand(int controllerId, CommandName commandName, ChampionCommandArgs? commandArgs) async {
    final SendCommandParameters parameters = SendCommandParameters(controllerId, commandName, commandArgs);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    final CommandResponse response = await _api.executeWithParametersAndResponse(
        r'client/sendCommand', parameters, (Map<String, dynamic> json) => CommandResponse.fromJson(json),
        withAccessToken: true);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add response validation */
    /* </auto-generated-safe-area> */
    return response.commandId;
  }

  @override
  Future setCommandResult(int commandId, CommandResult result) async {
    final SetCommandResultParameters parameters = SetCommandResultParameters(commandId, result);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'client/setCommandResult', parameters, withAccessToken: true);
  }
}
