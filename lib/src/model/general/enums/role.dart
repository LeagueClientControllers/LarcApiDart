import 'package:json_annotation/json_annotation.dart';

/// Enumeration of all available position team players 
/// could be placed on during the game
enum Role
{
	/// Role of the top lane
	@JsonValue("Top")
	top,

	/// Role of the jungle
	@JsonValue("Jungle")
	jungle,

	/// Role of the mid lane
	@JsonValue("Mid")
	mid,

	/// Role of the bot lane
	@JsonValue("Bot")
	bot,

	/// Role of the support
	@JsonValue("Support")
	support,
}
