import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:larc_api_dart/exceptions.dart';
import 'package:larc_api_dart/src/i_larc_api.dart';
import 'package:larc_api_dart/src/model/local/event_message.dart';
import 'package:larc_api_dart/src/services/events_handler.dart';
import 'package:web_socket_channel/io.dart';

import '../security/api_credentials.dart';

/// Service that simplifies work with long poll.
class EventService extends EventsHandler {
  Stream get providerGone => _providerGoneController.stream;
  final StreamController _providerGoneController = StreamController.broadcast();

  final ILarcApi _api;
  IOWebSocketChannel? _eventsProviderChannel;
  EventService(this._api);

  Future connectWithEventsProvider() async {
    if (_api.accessToken == null) {
      throw new UserNotAuthorizedException("ws");
    }

    if (_eventsProviderChannel != null) {
      return;
    }

    WebSocket ws;
    try {
      ws = await WebSocket.connect("ws://${ILarcApi.apiHost}/ws",
          headers: { "x-api-key": ApiCredentials.apiKey, "Authorization": "Bearer ${_api.accessToken}" });
    } on SocketException {
      throw new NetworkUnreachableException("ws");
    }

    ws.pingInterval = new Duration(seconds: 5);
    _eventsProviderChannel = IOWebSocketChannel(ws);
    _eventsProviderChannel!.stream.listen((message) {
      if (message is! String) {
        throw new EventsProviderException("Incoming message should be of the string type, got ${message.runtimeType}");
      }

      EventMessage eventMessage = EventMessage.fromJson(jsonDecode(message));
      handleMessage(eventMessage);
    }, onDone: () {
      _eventsProviderChannel = null;
      _providerGoneController.add(null);
    });
  }

  @override
  Future dispose() async {
    await _providerGoneController.close();
    await _eventsProviderChannel?.innerWebSocket?.close();
    return super.dispose();
  }
}