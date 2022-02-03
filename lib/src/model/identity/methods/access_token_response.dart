import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';


part 'access_token_response.g.dart';

/// Response of the methods that returns access token
@JsonSerializable()
class AccessTokenResponse extends ApiResponse
{
	
	@JsonKey(name: "accessToken")
	String? accessToken;

	AccessTokenResponse(): super();

	@override
	factory AccessTokenResponse.fromJson(Map<String, dynamic> json) => _$AccessTokenResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$AccessTokenResponseToJson(this);
}
