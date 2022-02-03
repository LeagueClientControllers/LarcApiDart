import 'package:json_annotation/json_annotation.dart';

/// Indicates what command should be executed.
enum CommandName
{
	/// League match should be accepted.
	@JsonValue("AcceptMatch")
	acceptMatch,

	/// League match should be declined.
	@JsonValue("DeclineMatch")
	declineMatch,
}
