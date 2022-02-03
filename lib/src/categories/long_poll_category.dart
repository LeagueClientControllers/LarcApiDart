import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/categories/abstraction/i_long_poll_category.dart';
import 'package:lcc_api_dart/src/model/long_poll/methods/long_poll_events_parameters.dart';
import 'package:lcc_api_dart/src/model/long_poll/methods/long_poll_events_response.dart';

class LongPollCategory implements ILongPollCategory {
  final ILccApi _api;
  LongPollCategory(this._api);

  @override
  Future<int> getLastEventId() =>
      _api.executeSResponse<int>("longpoll/getLastEventId", "eventId", withAccessToken: true);

  @override
  Future<LongPollEventsResponse> getEvents(int lastEventId, {int timeout = 60}) =>
      _api.executeCResponseCParameters<LongPollEventsResponse, LongPollEventsParameters>(
          "longpoll/getEvents",
          LongPollEventsParameters(lastEventId, timeout: timeout),
          (json) => LongPollEventsResponse.fromJson(json),
          withAccessToken: true);
}
