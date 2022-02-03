import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';


part 'long_poll_events_parameters.g.dart';

/// Parameters of the /longpoll/getEvents method
@JsonSerializable()
class LongPollEventsParameters implements BaseJsonSerializable<LongPollEventsParameters>
{
	/// Determines from which event to start fetching events when executing next long poll request
	@JsonKey(name: "lastEventId")
	late int lastEventId;

	/// Time within this request will be alive and will listen to events
	@JsonKey(name: "timeout")
	late int timeout;

	LongPollEventsParameters(this.lastEventId, {this.timeout = 60}): super();

	@override
	factory LongPollEventsParameters.fromJson(Map<String, dynamic> json) => _$LongPollEventsParametersFromJson(json);

	@override
	Map<String, dynamic> toJson() => _$LongPollEventsParametersToJson(this);
}
