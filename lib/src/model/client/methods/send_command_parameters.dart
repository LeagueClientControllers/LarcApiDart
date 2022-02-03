import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_name.dart';

part 'send_command_parameters.g.dart';

/// Parameters for the /client/sendCommand method.
@JsonSerializable()
class SendCommandParameters implements BaseJsonSerializable<SendCommandParameters>
{
	/// Id of the controller provided command is destined for.
	@JsonKey(name: "controllerId")
	late int controllerId;

	/// Name of the command for the client controller.
	@JsonKey(name: "commandName")
	late CommandName commandName;

	SendCommandParameters(this.controllerId, this.commandName): super();

	@override
	factory SendCommandParameters.fromJson(Map<String, dynamic> json) => _$SendCommandParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$SendCommandParametersToJson(this);
}
