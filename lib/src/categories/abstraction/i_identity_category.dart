//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:async';

import 'package:dart_library_generator/annotations.dart';
import 'package:lcc_api_dart/model.dart';

abstract class IIdentityCategory {
  /// Authorizes device in the system,
  /// binds it to the user and returns token.
  ///
  /// [login] - User's email or username
  /// [password] - User's password
  /// [deviceName] - Name of the device that will be authorized under the user
  /// [deviceType] - Type of the device that will be authorized under the user
  Future<String> login(String login, String password, String deviceName, DeviceType deviceType);

  /// Gets full info of the user.
  Future<ProfileInfo> getProfileInfo();

  /// Returns a fresh token with reset expiration date.
  /// based on data from current token.
  Future<String> refreshAccessToken();
}
