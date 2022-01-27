import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/model/long_poll/long_poll_events_response.dart';
import 'package:lcc_api_dart/src/model/long_poll/long_poll_parameters.dart';

class LongPollCategory {
  final ILccApi _api;
  LongPollCategory(this._api);

  Future<int> getLastEventId() =>
      _api.executeSResponse<int>("longpoll/getLastEventId", "eventId", withAccessToken: true);

  Future<LongPollEventsResponse> getEvents(int lastEventId, {int timeout = 60}) =>
      _api.executeCResponseCParameters<LongPollEventsResponse, LongPollParameters>("longpoll/getEvents",
          LongPollParameters(lastEventId, timeout: timeout), () => LongPollEventsResponse(),
          withAccessToken: true);
}
