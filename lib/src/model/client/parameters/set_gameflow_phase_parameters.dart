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

part 'set_gameflow_phase_parameters.g.dart';

/// Parameters of the /client/setGameflowPhase method.
@JsonSerializable()
class SetGameflowPhaseParameters implements BaseJsonSerializable<SetGameflowPhaseParameters> {
  SetGameflowPhaseParameters(this.gameflowPhase, [this.readyCheckStarted]);

  @override
  factory SetGameflowPhaseParameters.fromJson(Map<String, dynamic> json) => _$SetGameflowPhaseParametersFromJson(json);

  /// Current league client game flow phase to set.
  @JsonKey(name: "gameflowPhase")
  GameflowPhase gameflowPhase;

  /// If game flow phase is ready check, this property determines timestamp when ready check was started in unix format.
  @JsonKey(name: "readyCheckStarted", fromJson: unixTimestampToDateTimeNullable, toJson: dateTimeToUnixTimestampNullable)
  DateTime? readyCheckStarted;

  @override
  Map<String, dynamic> toJson() => _$SetGameflowPhaseParametersToJson(this);
}
