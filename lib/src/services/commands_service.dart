import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/model/lcc_api_dart_model.dart';
import 'package:tuple/tuple.dart';

/// Allows to send commands and wait for theirs execution.
/// For proper work make sure that you enabled listening of events before executing any commands.
class CommandsService {
  ILccApi _api;
  CommandsService(this._api);

  Future<CommandResult> sendCommand(int controllerId, CommandName commandName) async {
    int commandId = await _api.client.sendCommand(controllerId, commandName);
    await for (Tuple2<int, CommandResult> executionResult in _api.events.commandExecuted) {
      if (executionResult.item1 == commandId) {
        return executionResult.item2;
      }
    }

    throw UnimplementedError("Stream exited but command result wasn't returned");
  }
}
