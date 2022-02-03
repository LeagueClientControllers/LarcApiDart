import 'package:lcc_api_dart/src/model/client/gameflow_phase.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_name.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_result.dart';

/// Contains methods of /client/ API category.
abstract class IClientCategory
{
	/// Sets current game flow phase of the league client.
	Future setGameflowPhase(GameflowPhase? gameflowPhase);

	/// Sends command to be executed on the client controller.
	Future<int> sendCommand(int controllerId, CommandName commandName);

	/// Sets result of the command after execution.
	Future setCommandResult(int commandId, CommandResult result);
}
