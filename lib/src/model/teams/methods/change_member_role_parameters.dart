import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/general/enums/role.dart';

part 'change_member_role_parameters.g.dart';


@JsonSerializable()
class ChangeMemberRoleParameters implements BaseJsonSerializable<ChangeMemberRoleParameters>
{
	
	@JsonKey(name: "teamId")
	late int teamId;

	
	@JsonKey(name: "memberId")
	late int memberId;

	
	@JsonKey(name: "role")
	late Role memberRole;

	ChangeMemberRoleParameters(this.teamId, this.memberId, this.memberRole): super();

	@override
	factory ChangeMemberRoleParameters.fromJson(Map<String, dynamic> json) => _$ChangeMemberRoleParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ChangeMemberRoleParametersToJson(this);
}
