import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';


part 'profile_info.g.dart';


@JsonSerializable()
class ProfileInfo implements BaseJsonSerializable<ProfileInfo>
{
	
	@JsonKey(name: "summonerId")
	String? summomerId;

	ProfileInfo(): super();

	@override
	factory ProfileInfo.fromJson(Map<String, dynamic> json) => _$ProfileInfoFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$ProfileInfoToJson(this);
}
