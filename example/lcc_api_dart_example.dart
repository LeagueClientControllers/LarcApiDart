import 'dart:io';

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
  await api.init(credentialsStorage: storage);
  await api.identity.login(
      LoginParameters(
          "Rayms",
          "12345", //9Ty69pAsF+z7Ka@6e4ebx&hZb@=VQ&**vJK\$gq%eAcwbp82vjpjusYm-4C!7BFCHNe7vD_fBP2urWQEVTg8VFu@HtTg8a6fT#FH!^AFqzFs@KLd-qvK&k5Ue\$Y#Aj3BtMU7EK_d*XRzAd3mhzJJKm&yscFkuddqArjByHtJqd+dWJbCdfJ8VuNQKpV-ZAL9v-5RL&YH=Y+%b\$y+hrhg!%DKUJ5ggR-sfxd7!*g%K8*@MB7rMNVr#t?P^Z6jHN*Rh
          DeviceType.phone,
          "DartApiTestPhone"),
      saveCredentials: true);

  print(await storage.retrieveAccessToken());

  List<ClientController> controllers = await api.device.getControllers();
  //ClientController controller = await api.device.getControllerById(17);

  api.events.gameflowPhaseChanged.listen((data) {
    print("${data.item1}: ${data.item2} | ${data.item3}");
  });

  await api.events.startListening();
  print("Listening started");

  print("Command sending started");
  CommandResult result = await api.commands.sendCommand(9, CommandName.acceptMatch);
  print("Command executed");
  print("${result.result} | ${result.error} | ${result.errorMessage}");

  await Future.delayed(Duration(days: 1));
}
