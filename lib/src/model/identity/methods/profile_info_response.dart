import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/identity/profile_info.dart';

part 'profile_info_response.g.dart';


@JsonSerializable()
class ProfileInfoResponse extends ApiResponse
{
	
	@JsonKey(name: "profile")
	late ProfileInfo profile;

	ProfileInfoResponse(): super();

	@override
	factory ProfileInfoResponse.fromJson(Map<String, dynamic> json) => _$ProfileInfoResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ProfileInfoResponseToJson(this);
}
