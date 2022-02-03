import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/long_poll/command_event_type.dart';
import 'package:lcc_api_dart/src/model/client/commands/command.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_result.dart';

part 'command_event.g.dart';

/// Describes an event that is related to the command system.
@JsonSerializable()
class CommandEvent implements BaseJsonSerializable<CommandEvent>
{
	/// Type of the event.
	@JsonKey(name: "type")
	late CommandEventType type;

	/// If <see cref="Type"/> is <see cref="CommandEventType.CommandSent"/>,
	/// contains information about sent command.
	@JsonKey(name: "command")
	Command? command;

	/// If <see cref="Type"/> is <see cref="CommandEventType.CommandExecuted"/>,
	/// contains id of the command.
	@JsonKey(name: "commandId")
	late int commandId;

	/// If <see cref="Type"/> is <see cref="CommandEventType.CommandExecuted"/>,
	/// contains result of the command.
	@JsonKey(name: "commandResult")
	CommandResult? commandResult;

	CommandEvent(): super();

	@override
	factory CommandEvent.fromJson(Map<String, dynamic> json) => _$CommandEventFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$CommandEventToJson(this);
}
