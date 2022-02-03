import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/device/device_type.dart';

part 'jwt_payload.g.dart';

/// Represents the content of jwt payload
@JsonSerializable()
class JwtPayload implements BaseJsonSerializable<JwtPayload>
{
	/// Id of the user that can be authorized with this token
	@JsonKey(name: "userId")
	late int userId;

	/// Name of the user that can be authorized with this token
	@JsonKey(name: "username")
	String? username;

	/// Id of the current device
	@JsonKey(name: "deviceId")
	late int deviceId;

	/// Type of the current device
	@JsonKey(name: "deviceType")
	DeviceType? deviceType;

	/// When token was issued
	@JsonKey(name: "iat")
	late int issuedAt;

	/// When token is expired
	@JsonKey(name: "exp")
	late int expireAt;

	JwtPayload(): super();

	@override
	factory JwtPayload.fromJson(Map<String, dynamic> json) => _$JwtPayloadFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$JwtPayloadToJson(this);
}
