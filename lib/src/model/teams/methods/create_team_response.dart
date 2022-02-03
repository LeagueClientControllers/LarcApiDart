import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';


part 'create_team_response.g.dart';


@JsonSerializable()
class CreateTeamResponse extends ApiResponse
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	CreateTeamResponse(): super();

	@override
	factory CreateTeamResponse.fromJson(Map<String, dynamic> json) => _$CreateTeamResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$CreateTeamResponseToJson(this);
}
