import 'package:json_annotation/json_annotation.dart';

/// Indicates type of the event.
enum ClientEventType
{
	/// Current league client game flow phase has been changed.
	@JsonValue("GameflowPhaseChanged")
	gameflowPhaseChanged,
}
