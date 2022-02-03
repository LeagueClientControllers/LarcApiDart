import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/long_poll/client_event_type.dart';

part 'client_event.g.dart';

/// Describes an event that is related to the league client.
@JsonSerializable()
class ClientEvent implements BaseJsonSerializable<ClientEvent>
{
	/// Type of this event.
	@JsonKey(name: "type")
	late ClientEventType type;

	/// Id of the controller that is controlling the client we receive changes of.
	@JsonKey(name: "controllerId")
	late int controllerId;

	/// Changes of the client properties.
	@JsonKey(name: "changes")
	Map<String, Object>? changes;

	ClientEvent(): super();

	@override
	factory ClientEvent.fromJson(Map<String, dynamic> json) => _$ClientEventFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ClientEventToJson(this);
}
