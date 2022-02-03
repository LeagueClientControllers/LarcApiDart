import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/model/teams/member.dart';

part 'team.g.dart';

/// Represents league team of five members on each of five roles
@JsonSerializable()
class Team implements BaseJsonSerializable<Team>
{
	/// Unique id of the team
	@JsonKey(name: "id")
	late int id;

	
	@JsonKey(name: "name")
	late String name;

	/// Five members of the team
	@JsonKey(name: "members")
	late List<Member> members;

	Team(): super();

	@override
	factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$TeamToJson(this);
}
