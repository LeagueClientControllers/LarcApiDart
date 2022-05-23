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

part 'pick_event.g.dart';

/// Describes an event related to champ select phase in league client.
@JsonSerializable()
class PickEvent implements BaseJsonSerializable<PickEvent> {
  PickEvent(this.type, this.controllerId,
      [this.userPickPosition,
      this.alliesRoles,
      this.enemiesCount,
      this.requestedAt,
      this.actionType,
      this.isActorAnAlly,
      this.actorsRange,
      this.actorPosition,
      this.championId,
      this.completed,
      this.skinId]);

  @override
  factory PickEvent.fromJson(Map<String, dynamic> json) => _$PickEventFromJson(json);

  /// Type of the event
  @JsonKey(name: "type")
  PickEventType type;

  /// ID of the controller that manipulates league client
  /// in which this champ select phase is happening.
  @JsonKey(name: "controllerId")
  int controllerId;

  /// Specifies where in the pick queue user is.
  /// Only if {@see type} is {@see PickEventType.ChampSelectStarted}, otherwise null.
  @JsonKey(name: "userPickPosition")
  int? userPickPosition;

  /// Contains array of user's allies in a pick queue order with roles of each.
  /// Only if {@see type} is {@see PickEventType.ChampSelectStarted}, otherwise null.
  @JsonKey(name: "alliesRoles")
  List<Role>? alliesRoles;

  /// Contains number of matched enemies considering every one of them has {@see Role.Any} role.
  /// Only if {@see type} is {@see PickEventType.ChampSelectStarted}, otherwise null.
  @JsonKey(name: "enemiesCount")
  int? enemiesCount;

  /// When the action was requested.
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "requestedAt", fromJson: unixTimestampToDateTimeNullable, toJson: dateTimeToUnixTimestampNullable)
  DateTime? requestedAt;

  /// Specifies if requested or changed action was pick or ban.
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "actionType")
  ActionType? actionType;

  /// Indicates whether action was requested from an ally.
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "isActorAnAlly")
  bool? isActorAnAlly;

  /// Specifies range of actors the action was requested from ([0..4]).
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "actorsRange")
  ValueRange? actorsRange;

  /// Position of the actor in ally or enemy team ([0..4]).
  /// Only if {@see type} is {@see PickEventType.ActionChanged} or {@see PickEventType.SkinChanged},
  /// otherwise null.
  @JsonKey(name: "actorPosition")
  int? actorPosition;

  /// ID of a champion that was banned or picked.
  /// Only if {@see type} is {@see PickEventType.ActionChanged}, otherwise null.
  @JsonKey(name: "championId")
  int? championId;

  /// Indicates whether champion was actually ban or picked.
  /// Only if {@see type} is {@see PickEventType.ActionChanged}, otherwise null.
  @JsonKey(name: "completed")
  bool? completed;

  /// ID of a skin that was applied to the picked champion.
  /// Only if {@see type} is {@see PickEventType.SkinChanged}, otherwise null.
  @JsonKey(name: "skinId")
  int? skinId;

  @override
  Map<String, dynamic> toJson() => _$PickEventToJson(this);
}
