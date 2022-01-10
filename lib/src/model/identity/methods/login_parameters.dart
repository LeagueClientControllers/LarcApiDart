import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/device/device_type.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'login_parameters.g.dart';

/// Parameters of the /identity/login API method.
@JsonSerializable()
class LoginParameters extends BaseJsonSerializable<LoginParameters> {
  /// Type of the current device.
  final DeviceType deviceType;

  /// Name of the current device.
  final String deviceName;

  /// Nickname or email of the user.
  final String login;

  /// User's password.
  final String password;

  /// Creates parameters for the /identity/login method
  LoginParameters(this.login, this.password, this.deviceName, this.deviceType);

  @override
  LoginParameters fromJson(Map<String, dynamic> json) => _$LoginParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginParametersToJson(this);
}
