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

part 'change_name_parameters.g.dart';

///
@JsonSerializable()
class ChangeNameParameters implements BaseJsonSerializable<ChangeNameParameters> {
  ChangeNameParameters(this.name);

  @override
  factory ChangeNameParameters.fromJson(Map<String, dynamic> json) => _$ChangeNameParametersFromJson(json);

  ///
  @JsonKey(name: "name")
  String name;

  @override
  Map<String, dynamic> toJson() => _$ChangeNameParametersToJson(this);
}