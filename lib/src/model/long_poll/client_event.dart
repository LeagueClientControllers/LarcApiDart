import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'client_event.g.dart';

/// Describes an event that is related to the league client.
@JsonSerializable()
class ClientEvent extends BaseJsonSerializable<ClientEvent> {
  /// Type of this event.
  late ClientEventType type;

  /// Id of the controller that reported about this event.
  late int controllerId;

  /// Changes that make this event occur.
  Map<String, Object?>? changes;

  @override
  ClientEvent fromJson(Map<String, dynamic> json) => _$ClientEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClientEventToJson(this);
}

/// Indicates type of the event.
enum ClientEventType {
  /// Current client game flow phase was changed.
  @JsonValue("GameflowPhaseChanged")
  gameflowPhaseChanged
}
