import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/long_poll/device_event.dart';
import 'package:lcc_api_dart/src/model/long_poll/client_event.dart';
import 'package:lcc_api_dart/src/model/long_poll/command_event.dart';

part 'event_collection.g.dart';

/// Collection of the events.
@JsonSerializable()
class EventCollection implements BaseJsonSerializable<EventCollection>
{
	/// All of the events related to the user's devices.
	@JsonKey(name: "deviceEvents")
	late List<DeviceEvent> deviceEvents;

	/// All of the events related to the league client.
	@JsonKey(name: "clientEvents")
	late List<ClientEvent> clientEvents;

	/// All of the events related to the command system.
	@JsonKey(name: "commandEvents")
	late List<CommandEvent> commandEvents;

	EventCollection(): super();

	@override
	factory EventCollection.fromJson(Map<String, dynamic> json) => _$EventCollectionFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$EventCollectionToJson(this);
}
