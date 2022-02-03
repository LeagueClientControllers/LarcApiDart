import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';


part 'delete_team_parameters.g.dart';


@JsonSerializable()
class DeleteTeamParameters implements BaseJsonSerializable<DeleteTeamParameters>
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	DeleteTeamParameters(this.teamId): super();

	@override
	factory DeleteTeamParameters.fromJson(Map<String, dynamic> json) => _$DeleteTeamParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$DeleteTeamParametersToJson(this);
}
