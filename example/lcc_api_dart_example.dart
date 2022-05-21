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
    print(event.changes?["name"]);
  });

  await api.events.connectWithEventsProvider();
  await Future.delayed(Duration(days: 1));
}