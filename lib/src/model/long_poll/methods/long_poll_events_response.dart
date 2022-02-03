import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/long_poll/event_collection.dart';

part 'long_poll_events_response.g.dart';

/// Response of the /longpoll/getEvents method
@JsonSerializable()
class LongPollEventsResponse extends ApiResponse
{
	/// Id of the last event in the returned collection. 
	/// Used to point out when to start catch events when executing next long poll request
	@JsonKey(name: "lastEventId")
	late int lastEventId;

	/// Collection of the events
	@JsonKey(name: "events")
	late EventCollection events;

	LongPollEventsResponse(): super();

	@override
	factory LongPollEventsResponse.fromJson(Map<String, dynamic> json) => _$LongPollEventsResponseFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$LongPollEventsResponseToJson(this);
}
