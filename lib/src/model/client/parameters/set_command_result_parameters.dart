//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'package:decimal/decimal.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/utils/base_json_serializable.dart';

part 'set_command_result_parameters.g.dart';

/// Parameters of the /client/setCommandResult method.
@JsonSerializable()
class SetCommandResultParameters implements BaseJsonSerializable<SetCommandResultParameters> {
  SetCommandResultParameters(this.commandId, this.result);

  @override
  factory SetCommandResultParameters.fromJson(Map<String, dynamic> json) => _$SetCommandResultParametersFromJson(json);

  /// Id of the command to set result of.
  @JsonKey(name: "commandId")
  int commandId;

  /// Result of the command.
  @JsonKey(name: "result")
  CommandResult result;

  @override
  Map<String, dynamic> toJson() => _$SetCommandResultParametersToJson(this);
}