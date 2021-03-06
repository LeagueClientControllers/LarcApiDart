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

part 'champion_hovered_parameters.g.dart';

///
@JsonSerializable()
class ChampionHoveredParameters implements BaseJsonSerializable<ChampionHoveredParameters> {
  ChampionHoveredParameters(this.actorPosition, this.isActorAnAlly, this.championId);

  @override
  factory ChampionHoveredParameters.fromJson(Map<String, dynamic> json) => _$ChampionHoveredParametersFromJson(json);

  /// Position of the actor in ally or enemy team ([0..4]).
  @JsonKey(name: "actorPosition")
  int actorPosition;

  /// Whether actor is on ally or enemy team.
  @JsonKey(name: "isActorAnAlly")
  bool isActorAnAlly;

  /// ID of the hovered champion.
  @JsonKey(name: "championId")
  int championId;

  @override
  Map<String, dynamic> toJson() => _$ChampionHoveredParametersToJson(this);
}
