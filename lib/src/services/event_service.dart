import 'dart:async';
import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/model/lcc_api_dart_model.dart';
import 'package:lcc_api_dart/src/services/event_service_process_controller.dart';
import 'package:tuple/tuple.dart';

import '../../lcc_api_dart.dart';

/// Service that simplifies work with long poll.
class EventService {
  Stream<Tuple3<int, GameflowPhase?, DateTime?>> get gameflowPhaseChanged =>
      _gameflowPhaseChangedController.stream;
  final StreamController<Tuple3<int, GameflowPhase?, DateTime?>> _gameflowPhaseChangedController =
      StreamController<Tuple3<int, GameflowPhase?, DateTime?>>.broadcast();

  Stream<int> get deviceAdded => _deviceAddedController.stream;
  final StreamController<int> _deviceAddedController = StreamController<int>.broadcast();

  Stream<Tuple2<int, String>> get deviceNameChanged => _deviceNameChangedController.stream;
  final StreamController<Tuple2<int, String>> _deviceNameChangedController =
      StreamController<Tuple2<int, String>>.broadcast();

  Stream<Tuple2<int, bool>> get deviceStatusChanged => _deviceStatusChangedController.stream;
  final StreamController<Tuple2<int, bool>> _deviceStatusChangedController =
      StreamController<Tuple2<int, bool>>.broadcast();

  Stream<int> get deviceRemoved => _deviceRemovedController.stream;
  final StreamController<int> _deviceRemovedController = StreamController<int>.broadcast();

  Stream<Tuple2<int, CommandResult>> get commandExecuted => _commandExecutedController.stream;
  final StreamController<Tuple2<int, CommandResult>> _commandExecutedController =
      StreamController<Tuple2<int, CommandResult>>.broadcast();

  final ILccApi _api;
  late int _lastEventId;
  EventService(this._api);

  /// Starts listening process.
  Future<LongPollProcessController> startListening() async {
    _lastEventId = await _api.longPoll.getLastEventId();

    LongPollProcessController controller = LongPollProcessController();
    _listenerLoop(controller).onError((error, stackTrace) => controller.onException(error));
    return controller;
  }

  Future _listenerLoop(LongPollProcessController processController) async {
    while (!processController.cancelled) {
      LongPollEventsResponse response = await _api.longPoll.getEvents(_lastEventId, timeout: 30);
      for (var i = 0; i < response.events.clientEvents.length; i++) {
        ClientEvent event = response.events.clientEvents[i];
        if (event.type == ClientEventType.gameflowPhaseChanged) {
          String? phaseString = event.changes!["gameflowPhase"] as String?;
          if (phaseString == null) {
            _gameflowPhaseChangedController.add(Tuple3(event.controllerId, null, null));
            continue;
          }

          GameflowPhase phase = GameflowPhase.values.firstWhere((e) =>
              e.toString() == "GameflowPhase.${phaseString[0].toLowerCase()}${phaseString.substring(1)}");

          if (phase == GameflowPhase.readyCheck) {
            int? readyCheckStarted = event.changes!["readyCheckStarted"] as int?;
            if (readyCheckStarted == null) {
              throw WrongResponseException("longpoll/getEvents");
            }

            _gameflowPhaseChangedController.add(Tuple3(event.controllerId, phase,
                DateTime.fromMillisecondsSinceEpoch(readyCheckStarted * 1000, isUtc: true)));
          } else {
            _gameflowPhaseChangedController.add(Tuple3(event.controllerId, phase, null));
          }
        }
      }

      for (var i = 0; i < response.events.deviceEvents.length; i++) {
        DeviceEvent event = response.events.deviceEvents[i];
        if (event.type == DeviceEventType.deviceAdded) {
          _deviceAddedController.add(event.deviceId);
        } else if (event.type == DeviceEventType.deviceChanged) {
          if (event.changes!.containsKey("name")) {
            _deviceNameChangedController.add(Tuple2(event.deviceId, event.changes!["name"] as String));
          } else if (event.changes!.containsKey("isOnline")) {
            _deviceStatusChangedController.add(Tuple2(event.deviceId, event.changes!["isOnline"] as bool));
          }
        } else if (event.type == DeviceEventType.deviceRemoved) {
          _deviceRemovedController.add(event.deviceId);
        }
      }

      for (var i = 0; i < response.events.commandEvents.length; i++) {
        CommandEvent event = response.events.commandEvents[i];
        if (event.type == CommandEventType.commandExecuted) {
          _commandExecutedController.add(Tuple2(event.commandId, event.commandResult!));
        }
      }

      _lastEventId = response.lastEventId;
    }
  }

  void dispose() {
    _gameflowPhaseChangedController.close();
    _deviceAddedController.close();
    _deviceNameChangedController.close();
    _deviceStatusChangedController.close();
    _deviceRemovedController.close();
    _commandExecutedController.close();
  }
}
