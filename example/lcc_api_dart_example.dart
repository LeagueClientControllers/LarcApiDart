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
  await api.identity.login(
      LoginParameters(
          "Test",
          "dXR)A!^tV93cCKr:;cc'za*({MMg-R9\"Nm^8`&H]Tg_g)t\"xY<7hW97yr<EL,x,B`eFtX`46V8{TRtXeZXuP%jR<WdpZu\$D*EU}KEwHnFN%UV2*^ZMu(\"f%S3`!xuFNj",
          DeviceType.phone,
          "TestPhone"),
      saveCredentials: true);

  print(await storage.retrieveAccessToken());

  List<ClientController> controllers = await api.device.getControllers();
  ClientController controller = await api.device.getControllerById(17);

  await api.events.startListening();
  print("Listening started");

  await Future.delayed(Duration(days: 1));
}
