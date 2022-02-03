import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_name.dart';

part 'command.g.dart';

/// Describes command that is sent to the client controller to execute.
@JsonSerializable()
class Command implements BaseJsonSerializable<Command>
{
	/// Identifier of the command.
	@JsonKey(name: "id")
	late int id;

	/// Name of the command.
	@JsonKey(name: "name")
	late CommandName name;

	/// Arguments for the command.
	@JsonKey(name: "args")
	Object? args;

	Command(): super();

	@override
	factory Command.fromJson(Map<String, dynamic> json) => _$CommandFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$CommandToJson(this);
}
