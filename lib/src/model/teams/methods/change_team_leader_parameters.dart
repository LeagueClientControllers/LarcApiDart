import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';


part 'change_team_leader_parameters.g.dart';


@JsonSerializable()
class ChangeTeamLeaderParameters implements BaseJsonSerializable<ChangeTeamLeaderParameters>
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	
	@JsonKey(name: "newLeaderId")
	late int newLeaderId;

	ChangeTeamLeaderParameters(this.teamId, this.newLeaderId): super();

	@override
	factory ChangeTeamLeaderParameters.fromJson(Map<String, dynamic> json) => _$ChangeTeamLeaderParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ChangeTeamLeaderParametersToJson(this);
}
