import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/client/commands/command_error.dart';

part 'command_result.g.dart';

/// Describes result of the command.
@JsonSerializable()
class CommandResult implements BaseJsonSerializable<CommandResult>
{
	/// Indicates result of the command execution.
	@JsonKey(name: "result")
	late ExecutionResult result;

	/// Indicates what error occurred during command execution.
	@JsonKey(name: "error")
	CommandError? error;

	/// Message of the error occurred during command execution.
	@JsonKey(name: "errorMessage")
	String? errorMessage;

	CommandResult(this.result, {this.error, this.errorMessage}): super();

	@override
	factory CommandResult.fromJson(Map<String, dynamic> json) => _$CommandResultFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$CommandResultToJson(this);
}
