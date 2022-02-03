import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_result.dart';

part 'set_command_result_parameters.g.dart';

/// Parameters of the /client/setCommandResult method.
@JsonSerializable()
class SetCommandResultParameters implements BaseJsonSerializable<SetCommandResultParameters>
{
	/// Id of the command.
	@JsonKey(name: "commandId")
	late int commandId;

	/// Result of the command.
	@JsonKey(name: "result")
	late CommandResult result;

	SetCommandResultParameters(this.commandId, this.result): super();

	@override
	factory SetCommandResultParameters.fromJson(Map<String, dynamic> json) => _$SetCommandResultParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$SetCommandResultParametersToJson(this);
}
