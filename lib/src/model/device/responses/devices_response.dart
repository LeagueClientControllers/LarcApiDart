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

part 'devices_response.g.dart';

///
@JsonSerializable()
class DevicesResponse extends ApiResponse {
  DevicesResponse() : super();

  @override
  factory DevicesResponse.fromJson(Map<String, dynamic> json) => _$DevicesResponseFromJson(json);

  ///
  @JsonKey(name: "devices")
  late List<Device> devices;

  @override
  Map<String, dynamic> toJson() => _$DevicesResponseToJson(this);
}