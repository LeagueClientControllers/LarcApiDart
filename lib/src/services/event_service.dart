import 'dart:async';

import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/model/client/gameflow_phase.dart';
import 'package:lcc_api_dart/src/model/long_poll/client_event.dart';
import 'package:lcc_api_dart/src/model/long_poll/long_poll_events_response.dart';

/// Service that simplifies work with long poll.
class EventService {
  Stream<GameflowPhase?> get gameflowPhaseChanged => _gameflowPhaseChangedController.stream;
  final StreamController<GameflowPhase?> _gameflowPhaseChangedController =
      StreamController<GameflowPhase>.broadcast();

  final ILccApi _api;
  bool _isListening = false;
  late int _lastEventId;
  EventService(this._api);

  /// Starts listening process.
  Future startListening() async {
    _isListening = true;
    _lastEventId = await _api.longPoll.getLastEventId();
    _listenerLoop();
  }

  /// Stops listening process.
  void stopListening() {
    _isListening = false;
  }

  Future _listenerLoop() async {
    while (_isListening) {
      LongPollEventsResponse response = await _api.longPoll.getEvents(_lastEventId, timeout: 30);
      for (var i = 0; i < response.events.clientEvents.length; i++) {
        ClientEvent event = response.events.clientEvents[i];
        if (event.type == ClientEventType.gameflowPhaseChanged) {
          String? phaseString = event.changes!["gameflowPhase"] as String?;
          if (phaseString == null) {
            _gameflowPhaseChangedController.add(null);
            continue;
          }

          GameflowPhase phase = GameflowPhase.values.firstWhere((e) =>
              e.toString() == "GameflowPhase.${phaseString[0].toLowerCase()}${phaseString.substring(1)}");

          _gameflowPhaseChangedController.add(phase);
        }
      }

      _lastEventId = response.lastEventId;
    }
  }

  void dispose() {
    _gameflowPhaseChangedController.close();
  }
}
