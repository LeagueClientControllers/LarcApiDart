import 'package:json_annotation/json_annotation.dart';

/// Indicates type of the error occurred during execution of the command.
enum CommandError
{
	/// Error occurred due to the attempt to accept or decline match when game flow phase is not 'ReadyCheck'.
	@JsonValue("ReadyCheckError")
	readyCheckError,
}
