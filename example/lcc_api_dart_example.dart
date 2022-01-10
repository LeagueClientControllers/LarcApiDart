import 'package:lcc_api_dart/src/core/i_lcc_api.dart';
import 'package:lcc_api_dart/src/core/lcc_api.dart';
import 'package:lcc_api_dart/src/model/device/device_type.dart';
import 'package:lcc_api_dart/src/model/identity/methods/login_parameters.dart';
import 'package:lcc_api_dart/src/security/i_user_credentials_storage.dart';

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

  api = LccApi();
  await api.init(storage);
  print(await api.identity.refreshAccessToken());
}
