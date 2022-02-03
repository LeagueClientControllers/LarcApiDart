import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/categories/abstraction/i_client_category.dart';
import 'package:lcc_api_dart/src/model/lcc_api_dart_model.dart';

/// Contains methods of /client/ API category.
class ClientCategory implements IClientCategory {
  ILccApi _api;
  ClientCategory(this._api);

  @override
  Future setGameflowPhase(GameflowPhase? gameflowPhase) =>
      _api.executeSParameters("client/setGameflowPhase", "gameflowPhase", gameflowPhase?.toString());

  @override
  Future<int> sendCommand(int controllerId, CommandName commandName) => _api.executeSResponseCParameters(
      "client/sendCommand", SendCommandParameters(controllerId, commandName), "commandId");

  @override
  Future setCommandResult(int commandId, CommandResult result) =>
      _api.executeCParameters("client/setCommandResult", SetCommandResultParameters(commandId, result));
}
