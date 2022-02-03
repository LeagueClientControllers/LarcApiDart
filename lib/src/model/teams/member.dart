import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/general/enums/role.dart';

part 'member.g.dart';

/// Represents one of the five members of the league team
@JsonSerializable()
class Member implements BaseJsonSerializable<Member>
{
	/// Unique id of the team member
	@JsonKey(name: "id")
	late int id;

	/// Id of the Riot account associated with the user
	@JsonKey(name: "summonerId")
	late String summonerId;

	/// Role of the team member
	@JsonKey(name: "teamRole")
	late Role teamRole;

	
	@JsonKey(name: "isLeader")
	late bool isLeader;

	Member(): super();

	@override
	factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$MemberToJson(this);
}
