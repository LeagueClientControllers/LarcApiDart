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

part 'device_response.g.dart';

///
@JsonSerializable()
class DeviceResponse extends ApiResponse {
  DeviceResponse() : super();

  @override
  factory DeviceResponse.fromJson(Map<String, dynamic> json) => _$DeviceResponseFromJson(json);

  ///
  @JsonKey(name: "device")
  late Device device;

  @override
  Map<String, dynamic> toJson() => _$DeviceResponseToJson(this);
}