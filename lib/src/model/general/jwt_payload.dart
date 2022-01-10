import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/device/device_type.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'jwt_payload.g.dart';

/// Payload that is stored inside JWT access token
/// that is given to the user to further authorization.
@JsonSerializable()
class JwtPayload extends BaseJsonSerializable<JwtPayload> {
  /// Id of the user who can be authorized using the token.
  late int userId;

  /// Name of the user who can be authorized using the token.
  late String username;

  /// Id of the current device.
  late int deviceId;

  /// Type of the current device.
  late DeviceType deviceType;

  /// Time when the token is issued.
  @JsonKey(name: "iat")
  late int issuedAt;

  /// Time when the token is expired.
  @JsonKey(name: "exp")
  late int expireAt;

  @override
  JwtPayload fromJson(Map<String, dynamic> json) => _$JwtPayloadFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$JwtPayloadToJson(this);
}
