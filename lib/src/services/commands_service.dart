import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/i_larc_api.dart';

/// Allows to send commands and wait for theirs execution.
/// For proper work make sure that you enabled listening of events before executing any commands.
class CommandsService {
  ILarcApi _api;
  CommandsService(this._api);

  Future<CommandResult> sendCommand(int controllerId, CommandName commandName, [ChampionCommandArgs? args]) async {
    int commandId = await _api.client.sendCommand(controllerId, commandName, args);
    await for (CommandEvent event in _api.events.commandEvent) {
      if (event.type == CommandEventType.commandExecuted && event.commandId == commandId) {
        return event.commandResult!;
      }
    }

    throw UnimplementedError("Stream exited but command result wasn't returned");
  }
}
