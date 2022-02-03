import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';


part 'change_team_name_parameters.g.dart';


@JsonSerializable()
class ChangeTeamNameParameters implements BaseJsonSerializable<ChangeTeamNameParameters>
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	
	@JsonKey(name: "teamName")
	late String teamName;

	ChangeTeamNameParameters(this.teamId, this.teamName): super();

	@override
	factory ChangeTeamNameParameters.fromJson(Map<String, dynamic> json) => _$ChangeTeamNameParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ChangeTeamNameParametersToJson(this);
}
