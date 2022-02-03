import 'package:json_annotation/json_annotation.dart';

/// Indicates type of the <see cref="CommandEvent"/>
enum CommandEventType
{
	/// Command has been sent to the client controller.
	@JsonValue("CommandSent")
	commandSent,

	/// Command has been executed in the client controller and result has been sent back to the device.
	@JsonValue("CommandExecuted")
	commandExecuted,
}
