import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';


part 'create_team_parameters.g.dart';


@JsonSerializable()
class CreateTeamParameters extends ApiResponse
{
	
	@JsonKey(name: "teamName")
	late String name;

	CreateTeamParameters(this.name): super();

	@override
	factory CreateTeamParameters.fromJson(Map<String, dynamic> json) => _$CreateTeamParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$CreateTeamParametersToJson(this);
}
