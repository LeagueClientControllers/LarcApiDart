//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:async';

import 'package:lcc_api_dart/categories.dart';
import 'package:lcc_api_dart/core.dart';
import 'package:lcc_api_dart/exceptions.dart';
import 'package:lcc_api_dart/model.dart';

class IdentityCategory implements IIdentityCategory {
  IdentityCategory(this._api);

  final ILccApi _api;

  @override
  Future<String> login(String login, String password, String deviceName, DeviceType deviceType) async {
    try {
      AccessTokenResponse accessToken = await _api.executeWithParametersAndResponse<AccessTokenResponse, LoginParameters>(
          "identity/login", LoginParameters(login, password, deviceName, deviceType), (json) => AccessTokenResponse.fromJson(json),
          withAccessToken: false);

      await _api.updateAccessToken(accessToken.accessToken);
      return accessToken.accessToken;
    } on ApiMethodException catch (e) {
      if (e.error == MethodError.WrongNicknameEmailOrPassword) {
        return "";
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ProfileInfo> getProfileInfo() async {
    final ProfileInfoResponse response = await _api.executeWithResponse(
        r'identity/getProfileInfo', (Map<String, dynamic> json) => ProfileInfoResponse.fromJson(json),
        withAccessToken: true);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add response validation */
    /* </auto-generated-safe-area> */
    return response.profile;
  }

  @override
  Future<String> refreshAccessToken() async {
    final AccessTokenResponse response = await _api.executeWithResponse(
        r'identity/refreshAccessToken', (Map<String, dynamic> json) => AccessTokenResponse.fromJson(json),
        withAccessToken: true);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add response validation */
    /* </auto-generated-safe-area> */
    return response.accessToken;
  }
}
