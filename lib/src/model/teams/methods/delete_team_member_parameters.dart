import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';


part 'delete_team_member_parameters.g.dart';


@JsonSerializable()
class DeleteTeamMemberParameters implements BaseJsonSerializable<DeleteTeamMemberParameters>
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	
	@JsonKey(name: "memberId")
	late int memberId;

	DeleteTeamMemberParameters(this.teamId, this.memberId): super();

	@override
	factory DeleteTeamMemberParameters.fromJson(Map<String, dynamic> json) => _$DeleteTeamMemberParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$DeleteTeamMemberParametersToJson(this);
}
