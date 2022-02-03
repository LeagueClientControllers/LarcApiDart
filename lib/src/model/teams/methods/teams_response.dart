import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/teams/team.dart';

part 'teams_response.g.dart';

/// 
@JsonSerializable()
class TeamsResponse extends ApiResponse
{
	
	@JsonKey(name: "teams")
	late List<Team> teams;

	TeamsResponse(): super();

	@override
	factory TeamsResponse.fromJson(Map<String, dynamic> json) => _$TeamsResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$TeamsResponseToJson(this);
}
