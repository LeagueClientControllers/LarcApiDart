import 'package:lcc_api_dart/lcc_api_dart.dart';
import 'package:lcc_api_dart/src/model/long_poll/event_collection.dart';
import 'package:lcc_api_dart/src/utils/base_response_serializable.dart';

/// Response of the /longpoll/getEvents method.
class LongPollEventsResponse extends BaseResponseSerializable<LongPollEventsResponse> {
  /// Id of the current last event.
  late final int lastEventId;

  /// Collection of the events.
  late EventCollection events;

  LongPollEventsResponse();

  @override
  LongPollEventsResponse fromJson(Map<String, dynamic> json) {
    ApiResponse mixin = ApiResponse().fromJson(json);
    return LongPollEventsResponse()
      ..result = mixin.result
      ..error = mixin.error
      ..errorMessage = mixin.errorMessage
      ..lastEventId = json["lastEventId"]
      ..events = EventCollection().fromJson(json["events"]);
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{"lastEventId": lastEventId, "events": events.toJson()};
}
