import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';


part 'event_id_response.g.dart';

/// Response of the /longpoll/getLastEventId method
@JsonSerializable()
class EventIdResponse extends ApiResponse
{
	/// Id of the last event
	@JsonKey(name: "lastEventId")
	late int lastEventId;

	EventIdResponse(): super();

	@override
	factory EventIdResponse.fromJson(Map<String, dynamic> json) => _$EventIdResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$EventIdResponseToJson(this);
}
