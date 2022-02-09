import 'package:json_annotation/json_annotation.dart';
import 'package:lcc_api_dart/src/model/client/gameflow_phase.dart';
import 'package:lcc_api_dart/src/utils/base_json_serializable.dart';
import 'package:lcc_api_dart/src/utils/json_converters.dart';

part 'client_controller.g.dart';

/// Describes controller - desktop application that is controlling league client.
@JsonSerializable()
class ClientController implements BaseJsonSerializable<ClientController> {
  /// Identifier of the controller.
  @JsonKey(name: "id")
  late int id;

  /// Name of the controller.
  @JsonKey(name: "name")
  late String name;

  /// Whether this controller is long polling events.
  @JsonKey(name: "isOnline")
  late bool isOnline;

  /// Current gameflow phase of the league client.
  @JsonKey(name: "gameflowPhase")
  GameflowPhase? gameflowPhase;

  /// Time when ready check was initiated.
  @JsonKey(
      name: "readyCheckStarted", 
      fromJson: fromUnixTimestampToDateTime, 
      toJson: fromDateTimeToUnixTimestamp)
  DateTime? readyCheckStarted;

  ClientController() : super();

  @override
  factory ClientController.fromJson(Map<String, dynamic> json) => _$ClientControllerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClientControllerToJson(this);
}
