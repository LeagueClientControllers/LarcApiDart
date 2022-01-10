import 'package:json_annotation/json_annotation.dart';

/// Enumerates available device types
enum DeviceType {
  /// League client controller
  @JsonValue("Controller")
  controller,

  /// Mobile phone
  @JsonValue("Phone")
  phone
}
