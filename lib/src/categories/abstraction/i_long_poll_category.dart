import 'package:lcc_api_dart/src/model/long_poll/methods/long_poll_events_response.dart';

/// Contains methods of the /longpoll/ API category 
abstract class ILongPollCategory
{
	/// Gets id of the last current event of the user
	Future<int> getLastEventId();

	/// Gets collection of the events happened after event specified as <see cref="LongPollEventsParameters.LastEventId"/>
	/// or listening to the incoming events during <see cref="LongPollEventsParameters.Timeout"/> and returns collection of the one event
	Future<LongPollEventsResponse> getEvents(int lastEventId, {int timeout = 60});
}
