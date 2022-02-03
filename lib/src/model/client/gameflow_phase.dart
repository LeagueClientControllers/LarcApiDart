import 'package:json_annotation/json_annotation.dart';

/// Indicates phase of the game flow in league client.
enum GameflowPhase
{
	/// User wandering around client.
	@JsonValue("None")
	none,

	/// User in the lobby.
	@JsonValue("Lobby")
	lobby,

	/// Matchmaking in progress.
	@JsonValue("Matchmaking")
	matchmaking,

	/// 
	@JsonValue("CheckedIntoTournament")
	checkedIntoTournament,

	/// User should accept or decline match.
	@JsonValue("ReadyCheck")
	readyCheck,

	/// User selecting and/or banning champions.
	@JsonValue("ChampSelect")
	champSelect,

	/// 
	@JsonValue("GameStart")
	gameStart,

	/// 
	@JsonValue("FailedToLaunch")
	failedToLaunch,

	/// Game in progress.
	@JsonValue("InProgress")
	inProgress,

	/// 
	@JsonValue("Reconnect")
	reconnect,

	/// Waiting for post game stats.
	@JsonValue("WaitingForStats")
	waitingForStats,

	/// When game is ended but user has not returned to the lobby yet.
	@JsonValue("PreEndOfGame")
	preEndOfGame,

	/// Game is ended.
	@JsonValue("EndOfGame")
	endOfGame,

	/// 
	@JsonValue("TerminatedInError ")
	terminatedInError,
}
