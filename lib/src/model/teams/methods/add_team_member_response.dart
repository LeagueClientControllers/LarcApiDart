import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';


part 'add_team_member_response.g.dart';


@JsonSerializable()
class AddTeamMemberResponse extends ApiResponse
{
	
	@JsonKey(name: "memberId")
	late int memberId;

	AddTeamMemberResponse(this.memberId): super();

	@override
	factory AddTeamMemberResponse.fromJson(Map<String, dynamic> json) => _$AddTeamMemberResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$AddTeamMemberResponseToJson(this);
}
