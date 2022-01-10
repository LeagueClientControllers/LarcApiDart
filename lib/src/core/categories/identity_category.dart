import 'package:lcc_api_dart/src/core/i_lcc_api.dart';
import 'package:lcc_api_dart/src/exceptions/api_method_exception.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/identity/methods/login_parameters.dart';

/// Contains methods of the /identity/ API category
class IdentityCategory {
  final ILccApi _api;
  IdentityCategory(this._api);

  Future<bool> login(LoginParameters params, {bool saveCredentials = false}) async {
    try {
      String accessToken = await _api.executeSResponseCParameters<String, LoginParameters>(
          "identity/login", params, "accessToken",
          withAccessToken: false);

      await _api.updateAccessToken(accessToken, store: saveCredentials);
      return true;
    } on ApiMethodException catch (e) {
      if (e.error == MethodError.wrongNicknameEmailOrPassword) {
        return false;
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> refreshAccessToken() =>
      _api.executeSResponse("identity/refreshAccessToken", "accessToken", withAccessToken: true);
}
