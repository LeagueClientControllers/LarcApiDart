import 'dart:async';
import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/model/lcc_api_dart_model.dart';
import 'package:tuple/tuple.dart';

/// Service that simplifies work with long poll.
class EventService {
  Stream<Tuple2<int, GameflowPhase?>> get gameflowPhaseChanged => _gameflowPhaseChangedController.stream;
  final StreamController<Tuple2<int, GameflowPhase?>> _gameflowPhaseChangedController =
      StreamController<Tuple2<int, GameflowPhase?>>.broadcast();

  Stream<int> get deviceAdded => _deviceAddedController.stream;
  final StreamController<int> _deviceAddedController = StreamController<int>.broadcast();

  Stream<Tuple2<int, String>> get deviceNameChanged => _deviceNameChangedController.stream;
  final StreamController<Tuple2<int, String>> _deviceNameChangedController =
      StreamController<Tuple2<int, String>>.broadcast();

  Stream<int> get deviceRemoved => _deviceRemovedController.stream;
  final StreamController<int> _deviceRemovedController = StreamController<int>.broadcast();

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
            _gameflowPhaseChangedController.add(Tuple2(event.controllerId, null));
            continue;
          }

          GameflowPhase phase = GameflowPhase.values.firstWhere((e) =>
              e.toString() == "GameflowPhase.${phaseString[0].toLowerCase()}${phaseString.substring(1)}");

          _gameflowPhaseChangedController.add(Tuple2(event.controllerId, phase));
        }
      }

      for (var i = 0; i < response.events.deviceEvents.length; i++) {
        DeviceEvent event = response.events.deviceEvents[i];
        if (event.type == DeviceEventType.deviceAdded) {
          _deviceAddedController.add(event.deviceId);
        } else if (event.type == DeviceEventType.deviceChanged) {
          if (event.changes!.containsKey("name")) {
            _deviceNameChangedController.add(Tuple2(event.deviceId, event.changes!["name"] as String));
          }
        } else if (event.type == DeviceEventType.deviceRemoved) {
          _deviceRemovedController.add(event.deviceId);
        }
      }

      _lastEventId = response.lastEventId;
    }
  }

  void dispose() {
    _gameflowPhaseChangedController.close();
    _deviceAddedController.close();
    _deviceNameChangedController.close();
    _deviceRemovedController.close();
  }
}
