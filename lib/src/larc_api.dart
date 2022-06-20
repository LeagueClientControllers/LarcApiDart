import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:larc_api_dart/categories.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/exceptions/api_method_exception.dart';
import 'package:larc_api_dart/src/exceptions/user_not_authorized_exception.dart';
import 'package:larc_api_dart/src/exceptions/wrong_access_token_exception.dart';
import 'package:larc_api_dart/src/exceptions/wrong_response_exception.dart';
import 'package:larc_api_dart/src/security/api_credentials.dart';
import 'package:larc_api_dart/src/security/i_user_credentials_storage.dart';
import 'package:larc_api_dart/src/services/commands_service.dart';
import 'package:larc_api_dart/src/services/event_service.dart';
import 'package:larc_api_dart/src/utils/base_json_serializable.dart';

import 'exceptions/network_unreachable_exception.dart';
import 'i_larc_api.dart';

class LarcApi extends ILarcApi {
  static const Map<String, String> _requestHeaders = {
    "Content-Type": "application/json;charset=utf-8",
    "x-api-key": ApiCredentials.apiKey,
  };

  @override
  String? get accessToken => _accessToken;
  String? _accessToken;
  JwtPayload? _accessTokenPayload;
  IUserCredentialsStorage? _credentialsStorage;

  // #region <auto-generated> Generated code. Do not modify by hand.
  @override
  IClientCategory get client => _client;
  late IClientCategory _client;

  @override
  IDeviceCategory get device => _device;
  late IDeviceCategory _device;

  @override
  IIdentityCategory get identity => _identity;
  late IIdentityCategory _identity;
  // #endregion

  @override
  EventService get events => _events;
  late EventService _events;

  @override
  CommandsService get commands => _commands;
  late CommandsService _commands;

  LarcApi() {
    // #region <auto-generated> Generated code. Do not modify by hand.
    _client = ClientCategory(this);
    _device = DeviceCategory(this);
    _identity = IdentityCategory(this);
    // #endregion

    _events = EventService(this);
    _commands = CommandsService(this);
  }

  @override
  Future init({IUserCredentialsStorage? credentialsStorage, String? accessToken}) async {
    _credentialsStorage = credentialsStorage;
    if (accessToken != null) {
      _accessToken = accessToken;
      return;
    }

    String? oldToken;
    if (_credentialsStorage != null) {
      oldToken = await _credentialsStorage!.retrieveAccessToken();
    } else {
      oldToken = accessToken;
    }

    if (oldToken == null) return;
    _accessToken = oldToken;

    try {
      String freshToken = await identity.refreshAccessToken();
      updateAccessToken(freshToken, store: true);
    } on ApiMethodException catch (e) {
      if (e.error == MethodError.WrongAccessToken) {
        _accessToken = null;
        _credentialsStorage?.clearAccessToken();
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<bool> authorizeDevice(String login, String password, String deviceName, DeviceType deviceType,
      [bool saveCredentials = false]) async {
    try {
      String accessToken = await identity.login(login, password, deviceName, deviceType);
      await updateAccessToken(accessToken, store: saveCredentials);
      return true;
    } on ApiMethodException catch (e) {
      if (e.error == MethodError.WrongNicknameEmailOrPassword || e.error == MethodError.InvalidMethodParameter) {
        return false;
      }
      rethrow;
    }
  }

  @override
  Future updateAccessToken(String accessToken, {bool store = false}) async {
    try {
      JWT jwt = JWT.verify(accessToken, SecretKey(ApiCredentials.jwtSecret), checkExpiresIn: true);
      _accessTokenPayload = JwtPayload.fromJson(jwt.payload);
      _accessToken = accessToken;
    } on JWTError {
      throw WrongAccessTokenException();
    }

    if (store) {
      _credentialsStorage?.storeAccessToken(accessToken);
    }
  }

  @override
  Future execute(String methodPath, {bool withAccessToken = true}) async {
    String response = await _executeBaseNoPayload(methodPath, withAccessToken);
    ApiResponse responseObject = ApiResponse.fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.Error) {
      if (responseObject.errorName == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.errorName!, responseObject.errorMessage!);
    }
  }

  @override
  Future<TResponse> executeWithResponse<TResponse extends ApiResponse>(
      String methodPath, TResponse Function(Map<String, dynamic> json) responseFactory,
      {bool withAccessToken = true}) async {
    String response = await _executeBaseNoPayload(methodPath, withAccessToken);
    Map<String, dynamic> decodedJson = jsonDecode(response);

    try {
      TResponse responseObject = responseFactory(decodedJson);
      if (responseObject.result == ExecutionResult.Error) {
        throw ApiMethodException(methodPath, responseObject.errorName!, responseObject.errorMessage!);
      }

      return responseObject;
    } on TypeError {
      ApiResponse response = ApiResponse.fromJson(decodedJson);
      if (response.result != ExecutionResult.Error) {
        throw WrongResponseException(methodPath);
      }

      if (response.errorName == null || response.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, response.errorName!, response.errorMessage!);
    }
  }

  @override
  Future executeWithParameters<TParameters extends BaseJsonSerializable<TParameters>>(String methodPath, TParameters params,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, jsonEncode(params.toJson()), withAccessToken);
    ApiResponse responseObject = ApiResponse.fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.Error) {
      if (responseObject.errorName == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.errorName!, responseObject.errorMessage!);
    }
  }

  @override
  Future<TResponse> executeWithParametersAndResponse<TResponse extends ApiResponse, TParameters extends BaseJsonSerializable<TParameters>>(
      String methodPath, TParameters params, TResponse Function(Map<String, dynamic> json) responseFactory,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, jsonEncode(params.toJson()), withAccessToken);
    Map<String, dynamic> decodedJson = jsonDecode(response);

    try {
      TResponse responseObject = responseFactory(decodedJson);
      if (responseObject.result == ExecutionResult.Error) {
        throw ApiMethodException(methodPath, responseObject.errorName!, responseObject.errorMessage!);
      }

      return responseObject;
    } on TypeError {
      ApiResponse response = ApiResponse.fromJson(decodedJson);
      if (response.result != ExecutionResult.Error) {
        throw WrongResponseException(methodPath);
      }

      if (response.errorName == null || response.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, response.errorName!, response.errorMessage!);
    }
  }

  Future<String> _executeBase(String methodPath, String payload, bool withAccessToken) async {
    Uri url = Uri.parse("${ILarcApi.baseApiUri}/$methodPath");
    print("Request to '$url' started. Payload - $payload");

    Response? response;
    try {
      if (withAccessToken) {
        if (_accessToken == null) {
          throw UserNotAuthorizedException(methodPath);
        }

        response = await http
            .post(url, headers: Map.from(_requestHeaders)..["Authorization"] = "Bearer $_accessToken", body: payload)
            .timeout(new Duration(seconds: 5));
      } else {
        response = await http.post(url, headers: _requestHeaders, body: payload).timeout(new Duration(seconds: 5));
      }
    } on SocketException {
      throw NetworkUnreachableException(methodPath);
    } on http.ClientException {
      throw NetworkUnreachableException(methodPath);
    } on TimeoutException {
      throw NetworkUnreachableException(methodPath);
    }

    print("Request to '$url' ended. Response - ${response.body}");
    return response.body;
  }

  Future<String> _executeBaseNoPayload(String methodPath, bool withAccessToken) async {
    Uri url = Uri.parse("${ILarcApi.baseApiUri}/$methodPath");
    print("Request to '$url' started");

    Response? response;
    try {
      if (withAccessToken) {
        if (_accessToken == null) {
          throw UserNotAuthorizedException(methodPath);
        }

        response = await http
            .post(url, headers: Map.from(_requestHeaders)..["Authorization"] = "Bearer $_accessToken")
            .timeout(new Duration(seconds: 5));
      } else {
        response =
            await http.post(url, headers: _requestHeaders).timeout(Duration(seconds: methodPath.contains("longpoll/getEvents") ? 40 : 5));
      }
    } on SocketException {
      throw NetworkUnreachableException(methodPath);
    } on http.ClientException {
      throw NetworkUnreachableException(methodPath);
    } on TimeoutException {
      throw NetworkUnreachableException(methodPath);
    }

    print("Request to '$url' ended. Response - ${response.body}");
    return response.body;
  }

  @override
  Future dispose() async {
    _events.dispose();
  }
}
