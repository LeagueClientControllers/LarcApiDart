import 'dart:convert';

import 'package:larc_api_dart/src/exceptions/events_provider_exception.dart';
import 'package:larc_api_dart/src/exceptions/user_not_authorized_exception.dart';
import 'package:larc_api_dart/src/i_larc_api.dart';
import 'package:larc_api_dart/src/model/local/event_message.dart';
import 'package:larc_api_dart/src/services/events_handler.dart';
import 'package:web_socket_channel/io.dart';

import '../security/api_credentials.dart';

/// Service that simplifies work with long poll.
class EventService extends EventsHandler {
  IOWebSocketChannel? _eventsProviderChannel;
  
  final ILarcApi _api;
  EventService(this._api);

  Future connectWithEventsProvider() async {
    if (_api.accessToken == null) {
      throw new UserNotAuthorizedException("ws");
    }

    _eventsProviderChannel = IOWebSocketChannel.connect(
        Uri.parse("ws://${ILarcApi.apiHost}/ws"),
        headers: { "x-api-key": ApiCredentials.apiKey, "Authorization": "Bearer ${_api.accessToken}" });

    _eventsProviderChannel!.stream.listen((message) {
      if (message is! String) {
        throw new EventsProviderException("Incoming message should be of the string type, got ${message.runtimeType}");
      }

      EventMessage eventMessage = EventMessage.fromJson(jsonDecode(message));
      handleMessage(eventMessage); 
    });
  }
}
