import 'dart:convert';

import 'package:larc_api_dart/core.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/security/i_user_credentials_storage.dart';

class MockStorage implements IUserCredentialsStorage {
  String? _token;

  @override
  Future clearAccessToken() async {
    _token = null;
  }

  @override
  Future<String?> retrieveAccessToken() async {
    return _token;
  }

  @override
  Future storeAccessToken(String accessToken) async {
    _token = accessToken;
  }
}

Future main() async {
   MockStorage storage = MockStorage();

  ILarcApi api = LarcApi();
  await api.init(credentialsStorage: storage);
  await api.identity.login(
      "Rayms",
      "12345",
      "DartApiTestPhone",
      DeviceType.Phone);

  print(await storage.retrieveAccessToken());

  List<ClientController> controllers = await api.device.getControllers();

  api.events.deviceEvent.listen((event) {
    print("DeviceEvent: ${event.deviceId} -> ${event.type}  ${event.changes.toString()}");
  });

  api.events.clientEvent.listen((event) {
    print("ClientEvent: ${event.controllerId} -> ${event.type} | ${event.changes.toString()}");
  });

  api.events.commandEvent.listen((event) {
    print("CommandEvent: ${event.commandResult!.result} | ${event.commandResult!.error} | ${event.commandResult!.errorMessage}");
  });

  api.events.pickEvent.listen((event) {
    print("PickEvent: ${jsonEncode(event.toJson())}");
  });

  await api.events.connectWithEventsProvider();
  await Future.delayed(Duration(days: 1));
}