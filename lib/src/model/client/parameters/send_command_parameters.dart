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

part 'send_command_parameters.g.dart';

/// Parameters of the /client/sendCommand method.
@JsonSerializable()
class SendCommandParameters implements BaseJsonSerializable<SendCommandParameters> {
  SendCommandParameters(this.controllerId, this.commandName, [this.commandArgs]);

  @override
  factory SendCommandParameters.fromJson(Map<String, dynamic> json) => _$SendCommandParametersFromJson(json);

  /// Determine which controller should execute this command.
  @JsonKey(name: "controllerId")
  int controllerId;

  /// Command that should be sent to the client controller.
  @JsonKey(name: "commandName")
  CommandName commandName;

  /// Arguments of the command.
  @JsonKey(name: "commandArgs")
  ChampionCommandArgs? commandArgs;

  @override
  Map<String, dynamic> toJson() => _$SendCommandParametersToJson(this);
}
