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

part 'get_by_id_parameters.g.dart';

///
@JsonSerializable()
class GetByIdParameters implements BaseJsonSerializable<GetByIdParameters> {
  GetByIdParameters(this.id);

  @override
  factory GetByIdParameters.fromJson(Map<String, dynamic> json) => _$GetByIdParametersFromJson(json);

  ///
  @JsonKey(name: "id")
  int id;

  @override
  Map<String, dynamic> toJson() => _$GetByIdParametersToJson(this);
}
