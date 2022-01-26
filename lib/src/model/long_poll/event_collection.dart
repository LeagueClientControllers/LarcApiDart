import 'package:lcc_api_dart/src/model/long_poll/client_event.dart';
import 'package:lcc_api_dart/src/model/long_poll/device_event.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

/// Collection of the events.
class EventCollection extends BaseJsonSerializable<EventCollection> {
  /// Events related to the devices.
  late final List<DeviceEvent> deviceEvents;

  /// Events related to the league client.
  late final List<ClientEvent> clientEvents;

  @override
  EventCollection fromJson(Map<String, dynamic> json) => EventCollection()
    ..deviceEvents = (json['deviceEvents'] as List<dynamic>)
        .map((e) => DeviceEvent().fromJson(e as Map<String, dynamic>))
        .toList()
    ..clientEvents = (json['clientEvents'] as List<dynamic>)
        .map((e) => ClientEvent().fromJson(e as Map<String, dynamic>))
        .toList();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'deviceEvents': deviceEvents,
        'clientEvents': clientEvents,
      };
}
