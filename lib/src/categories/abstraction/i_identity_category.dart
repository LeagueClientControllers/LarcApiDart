import 'package:lcc_api_dart/src/model/identity/methods/login_parameters.dart';
import 'package:lcc_api_dart/src/model/identity/profile_info.dart';

/// Contains methods of the /identity/ API category.
abstract class IIdentityCategory {
  /// Trying to authorize current device in the system.
  Future<bool> login(LoginParameters params, {bool saveCredentials = false});

  /// Refreshes access token.
  Future refreshAccessToken();

  /// Gets profile info.
  Future<ProfileInfo> getProfileInfo();
}
