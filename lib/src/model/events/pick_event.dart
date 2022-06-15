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
      [this.stage,
      this.requestedAt,
      this.actionType,
      this.actorsRange,
      this.summonerPosition,
      this.isSummonerAnAlly,
      this.championId,
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

  /// Contains initial pick stage info when it's started.
  /// Only if {@see type} is {@see PickEventType.ChampSelectStarted}, otherwise null.
  @JsonKey(name: "stage")
  PickStage? stage;

  /// When the action was requested.
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "requestedAt", fromJson: unixTimestampToDateTimeNullable, toJson: dateTimeToUnixTimestampNullable)
  DateTime? requestedAt;

  /// Specifies if requested or changed action was pick or ban.
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "actionType")
  ActionType? actionType;

  /// Specifies range of actors the action was requested from ([0..4]).
  /// Only if {@see type} is {@see PickEventType.ActionRequested}, otherwise null.
  @JsonKey(name: "actorsRange")
  ValueRange? actorsRange;

  /// Position of the summoner in ally or enemy team ([0..4]).
  /// Only if {@see type} is champion related or {@see PickEventType.SkinChanged},
  /// otherwise null.
  @JsonKey(name: "actorPosition")
  int? summonerPosition;

  /// Is summoner in ally or enemy team.
  /// Only if {@see type} is champion related, otherwise null.
  @JsonKey(name: "isSummonerAnAlly")
  bool? isSummonerAnAlly;

  /// ID of a champion that was banned, picked or hovered on.
  /// Only if {@see type} is {@see PickEventType.ChampionHovered} or optional if {@see PickEventType.ActionCompleted},
  /// otherwise null.
  @JsonKey(name: "championId")
  int? championId;

  /// ID of a skin that was applied to the picked champion.
  /// Only if {@see type} is {@see PickEventType.SkinChanged}, otherwise null.
  @JsonKey(name: "skinId")
  int? skinId;

  @override
  Map<String, dynamic> toJson() => _$PickEventToJson(this);
}
