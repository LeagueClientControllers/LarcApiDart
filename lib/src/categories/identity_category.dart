import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/categories/abstraction/i_identity_category.dart';
import 'package:lcc_api_dart/src/exceptions/api_method_exception.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/model/identity/methods/login_parameters.dart';
import 'package:lcc_api_dart/src/model/identity/profile_info.dart';

/// Contains methods of the /identity/ API category
class IdentityCategory implements IIdentityCategory {
  final ILccApi _api;
  IdentityCategory(this._api);

  @override
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

  @override
  Future<String> refreshAccessToken() =>
      _api.executeSResponse("identity/refreshAccessToken", "accessToken", withAccessToken: true);

  @override
  Future<ProfileInfo> getProfileInfo() {
    // TODO: implement getProfileInfo
    throw UnimplementedError();
  }
}
