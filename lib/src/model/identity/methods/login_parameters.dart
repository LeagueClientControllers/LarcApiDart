import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/device/device_type.dart';

part 'login_parameters.g.dart';

/// Parameters of the /identity/login method
@JsonSerializable()
class LoginParameters implements BaseJsonSerializable<LoginParameters>
{
	/// Type of the current device
	@JsonKey(name: "deviceType")
	late DeviceType deviceType;

	/// Name of the current device
	@JsonKey(name: "deviceName")
	late String deviceName;

	/// Nickname or email
	@JsonKey(name: "login")
	late String login;

	/// Password
	@JsonKey(name: "password")
	late String password;

	LoginParameters(this.login, this.password, this.deviceType, this.deviceName): super();

	@override
	factory LoginParameters.fromJson(Map<String, dynamic> json) => _$LoginParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$LoginParametersToJson(this);
}
