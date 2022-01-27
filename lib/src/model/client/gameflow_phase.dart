/// Indicates phase of the game flow in league client.
enum GameflowPhase {
  /// User wandering around client.
  none,

  /// User in the lobby.
  lobby,

  /// Matchmaking in progress.
  matchmaking,

  /// User should accept or decline match.
  readyCheck,

  /// User selecting and/or banning champions.
  champSelect,

  /// Game in progress.
  inProgress,

  /// When game is ended but user has not returned to the lobby yet.
  preEndOfGame
}
