import 'package:lcc_api_dart/core.dart';
import 'package:lcc_api_dart/model.dart';
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

Future main() async {
   MockStorage storage = MockStorage();

  ILccApi api = LccApi();
  await api.init(credentialsStorage: storage);
  await api.identity.login(
      "Rayms",
      "12345", //9Ty69pAsF+z7Ka@6e4ebx&hZb@=VQ&**vJK\$gq%eAcwbp82vjpjusYm-4C!7BFCHNe7vD_fBP2urWQEVTg8VFu@HtTg8a6fT#FH!^AFqzFs@KLd-qvK&k5Ue\$Y#Aj3BtMU7EK_d*XRzAd3mhzJJKm&yscFkuddqArjByHtJqd+dWJbCdfJ8VuNQKpV-ZAL9v-5RL&YH=Y+%b\$y+hrhg!%DKUJ5ggR-sfxd7!*g%K8*@MB7rMNVr#t?P^Z6jHN*Rh
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