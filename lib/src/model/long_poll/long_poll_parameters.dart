import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';

part 'long_poll_parameters.g.dart';

@JsonSerializable()
class LongPollParameters extends BaseJsonSerializable<LongPollParameters> {
  /// Id of the last event after which events should be fetched.
  final int lastEventId;

  /// Long poll timeout in seconds.
  final int timeout;

  LongPollParameters(this.lastEventId, {this.timeout = 60});

  @override
  LongPollParameters fromJson(Map<String, dynamic> json) => _$LongPollParametersFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LongPollParametersToJson(this);
}
