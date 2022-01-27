import 'package:lcc_api_dart/lcc_api_dart.dart';

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

void main() {
  _main();
}

Future _main() async {
  MockStorage storage = MockStorage();

  ILccApi api = LccApi();
  await api.init(storage);
  await api.identity
      .login(LoginParameters("Rayms", "12345", "ApiTestDevice", DeviceType.phone), saveCredentials: true);

  print(await storage.retrieveAccessToken());

  await api.events.startListening();
  print("Listening started");

  await Future.delayed(Duration(days: 1));
}
