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

part 'action_changed_parameters.g.dart';

///
@JsonSerializable()
class ActionChangedParameters implements BaseJsonSerializable<ActionChangedParameters> {
  ActionChangedParameters(this.completed, this.championId, this.actorPosition);

  @override
  factory ActionChangedParameters.fromJson(Map<String, dynamic> json) => _$ActionChangedParametersFromJson(json);

  /// Is champion action completed or the champion is only hovered.
  @JsonKey(name: "completed")
  bool completed;

  /// ID of the picked or banned champion.
  @JsonKey(name: "championId")
  int championId;

  /// Position of the actor in ally or enemy team ([0..4]).
  @JsonKey(name: "actorPosition")
  int actorPosition;

  @override
  Map<String, dynamic> toJson() => _$ActionChangedParametersToJson(this);
}