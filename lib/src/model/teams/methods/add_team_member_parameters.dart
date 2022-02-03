import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/general/enums/role.dart';

part 'add_team_member_parameters.g.dart';


@JsonSerializable()
class AddTeamMemberParameters implements BaseJsonSerializable<AddTeamMemberParameters>
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	
	@JsonKey(name: "memberSummonerId")
	late String memberSummonerId;

	
	@JsonKey(name: "memberRole")
	late Role memberRole;

	AddTeamMemberParameters(this.teamId, this.memberSummonerId, this.memberRole): super();

	@override
	factory AddTeamMemberParameters.fromJson(Map<String, dynamic> json) => _$AddTeamMemberParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$AddTeamMemberParametersToJson(this);
}
