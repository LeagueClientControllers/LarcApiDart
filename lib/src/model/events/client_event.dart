//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'package:dart_library_generator/utilities.dart';
import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/utils/base_json_serializable.dart';

part 'client_event.g.dart';

/// Describes an event related to the client.
@JsonSerializable()
class ClientEvent implements BaseJsonSerializable<ClientEvent> {
  ClientEvent(this.type, this.controllerId, [this.changes]);

  @override
  factory ClientEvent.fromJson(Map<String, dynamic> json) => _$ClientEventFromJson(json);

  /// Type of the event.
  @JsonKey(name: "type")
  ClientEventType type;

  /// Contains id of the client that reported about client changes.
  @JsonKey(name: "controllerId")
  int controllerId;

  /// Contains changes of the client values.
  @JsonKey(name: "changes")
  Map<String, Object>? changes;

  @override
  Map<String, dynamic> toJson() => _$ClientEventToJson(this);
}
