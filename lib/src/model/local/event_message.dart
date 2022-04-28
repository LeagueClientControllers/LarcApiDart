import 'package:json_annotation/json_annotation.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/utils/base_json_serializable.dart';

part 'event_message.g.dart';

@JsonSerializable()
class EventMessage implements BaseJsonSerializable<EventMessage> {
  EventMessage(this.eventType, this.event);

  @JsonKey(name: "eventType")
  EventType eventType;

  @JsonKey(name: "event")
  Map<String, dynamic> event;
  
  @override
  factory EventMessage.fromJson(Map<String, dynamic> json) => _$EventMessageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EventMessageToJson(this);
}