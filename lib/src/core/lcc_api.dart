import 'dart:collection';
import 'dart:convert';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:lcc_api_dart/src/core/categories/identity_category.dart';
import 'package:lcc_api_dart/src/core/categories/long_poll_category.dart';
import 'package:lcc_api_dart/src/exceptions/api_method_exception.dart';
import 'package:lcc_api_dart/src/exceptions/user_not_authorized_exception.dart';
import 'package:lcc_api_dart/src/exceptions/wrong_access_token_exception.dart';
import 'package:lcc_api_dart/src/exceptions/wrong_response_exception.dart';
import 'package:lcc_api_dart/src/model/general/api_response.dart';
import 'package:lcc_api_dart/src/model/general/execution_result.dart';
import 'package:lcc_api_dart/src/model/general/jwt_payload.dart';
import 'package:lcc_api_dart/src/model/general/method_error.dart';
import 'package:lcc_api_dart/src/security/api_credentials.dart';
import 'package:lcc_api_dart/src/utils/base_response_serializable.dart';

import 'i_lcc_api.dart';
import '../security/user_credentials_storage.dart';
import '../utils/base_json_serializable.dart';

class LccApi implements ILccApi {
  static const String _apiHost = "150.230.151.8:56067";
  static const String _baseApiUri = "http://$_apiHost";
  static const Map<String, String> _requestHeaders = {
    "Content-Type": "application/json;charset=utf-8",
    "x-api-key": ApiCredentials.apiKey,
  };

  String? _accessToken;
  JwtPayload? _accessTokenPayload;

  late IUserCredentialsStorage _credentialsStorage;
  late IdentityCategory _identityCategory;
  late LongPollCategory _longPollCategory;

  @override
  IdentityCategory get identity => _identityCategory;

  @override
  LongPollCategory get longPoll => _longPollCategory;

  @override
  bool get userAuthorized => _accessToken != null;

  LccApi() {
    _identityCategory = IdentityCategory(this);
    _longPollCategory = LongPollCategory(this);
  }

  @override
  Future init(IUserCredentialsStorage credentialsStorage) async {
    _credentialsStorage = credentialsStorage;

    String? oldToken = await _credentialsStorage.retrieveAccessToken();
    if (oldToken == null) return;
    _accessToken = oldToken;

    try {
      String freshToken = await identity.refreshAccessToken();
      updateAccessToken(freshToken, store: true);
    } on ApiMethodException catch (e) {
      if (e.error == MethodError.wrongAccessToken) {
        _accessToken = null;
        _credentialsStorage.clearAccessToken();
      } else {
        rethrow;
      }
    }
  }

  @override
  Future updateAccessToken(String accessToken, {bool store = false}) async {
    try {
      JWT jwt = JWT.verify(accessToken, SecretKey(ApiCredentials.jwtSecret), checkExpiresIn: true);
      _accessTokenPayload = JwtPayload().fromJson(jwt.payload);
      _accessToken = accessToken;
    } on JWTError {
      throw WrongAccessTokenException();
    }

    if (store) {
      _credentialsStorage.storeAccessToken(accessToken);
    }
  }

  @override
  Future execute(String methodPath, {bool withAccessToken = true}) async {
    String response = await _executeBaseNoPayload(methodPath, withAccessToken);
    ApiResponse responseObject = ApiResponse().fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }
  }

  @override
  Future<TResponse> executeCResponseCParameters<TResponse extends BaseResponseSerializable<TResponse>,
          TParameters extends BaseJsonSerializable<TParameters>>(
      String methodPath, TParameters params, TResponse Function() responseCreator,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, jsonEncode(params.toJson()), withAccessToken);
    TResponse responseObject = responseCreator().fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }

    return responseObject;
  }

  @override
  Future<TResponse> executeSResponseCParameters<TResponse extends Object,
          TParameters extends BaseJsonSerializable<TParameters>>(
      String methodPath, TParameters params, String responseObjectKey,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, jsonEncode(params.toJson()), withAccessToken);

    LinkedHashMap<String, dynamic> json = jsonDecode(response);
    ApiResponse responseObject = ApiResponse().fromJson(json);
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }

    if (!json.containsKey(responseObjectKey)) {
      throw WrongResponseException(methodPath);
    }

    Object res = json[responseObjectKey];
    if (res.runtimeType != TResponse) {
      throw WrongResponseException(methodPath);
    }

    return res as TResponse;
  }

  @override
  Future<TResponse> executeCResponseSParameters<TResponse extends BaseResponseSerializable<TResponse>,
          TParameter extends Object>(
      String methodPath, String paramKey, TParameter param, TResponse Function() responseCreator,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, "{\"$paramKey\":\"$param\"}", withAccessToken);
    TResponse responseObject = responseCreator().fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }

    return responseObject;
  }

  @override
  Future<TResponse> executeSResponseSParameters<TResponse extends Object, TParameter extends Object>(
      String methodPath, String paramKey, TParameter param, String responseObjectKey,
      {withAccessToken = true}) async {
    String response = await _executeBase(methodPath, "{\"$paramKey\":\"$param\"}", withAccessToken);

    LinkedHashMap<String, dynamic> json = jsonDecode(response);
    ApiResponse responseObject = ApiResponse().fromJson(json);
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }

    if (!json.containsKey(responseObjectKey)) {
      throw WrongResponseException(methodPath);
    }

    Object res = json[responseObjectKey];
    if (res.runtimeType != TResponse) {
      throw WrongResponseException(methodPath);
    }

    return res as TResponse;
  }

  @override
  Future<TResponse> executeCResponse<TResponse extends BaseResponseSerializable<TResponse>>(
      String methodPath, TResponse Function() responseCreator,
      {bool withAccessToken = true}) async {
    String response = await _executeBaseNoPayload(methodPath, withAccessToken);
    TResponse responseObject = responseCreator().fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }

    return responseObject;
  }

  @override
  Future<TResponse> executeSResponse<TResponse extends Object>(String methodPath, String responseObjectKey,
      {bool withAccessToken = true}) async {
    String response = await _executeBaseNoPayload(methodPath, withAccessToken);

    LinkedHashMap<String, dynamic> json = jsonDecode(response);
    ApiResponse responseObject = ApiResponse().fromJson(json);
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }

    if (!json.containsKey(responseObjectKey)) {
      throw WrongResponseException(methodPath);
    }

    Object res = json[responseObjectKey];
    if (res.runtimeType != TResponse) {
      throw WrongResponseException(methodPath);
    }

    return res as TResponse;
  }

  @override
  Future executeCParameters<TParameters extends BaseJsonSerializable<TParameters>>(
      String methodPath, TParameters params,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, jsonEncode(params.toJson()), withAccessToken);
    ApiResponse responseObject = ApiResponse().fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }
  }

  @override
  Future executeSParameters<TParameter extends Object>(String methodPath, String paramKey, TParameter param,
      {bool withAccessToken = true}) async {
    String response = await _executeBase(methodPath, "{\"$paramKey\":\"$param\"}", withAccessToken);
    ApiResponse responseObject = ApiResponse().fromJson(jsonDecode(response));
    if (responseObject.result == ExecutionResult.error) {
      if (responseObject.error == null || responseObject.errorMessage == null) {
        throw WrongResponseException(methodPath);
      }

      throw ApiMethodException(methodPath, responseObject.error!, responseObject.errorMessage!);
    }
  }

  Future<String> _executeBase(String methodPath, String payload, bool withAccessToken) async {
    Uri url = Uri.parse("$_baseApiUri/$methodPath");
    Response? response;
    if (withAccessToken) {
      if (_accessToken == null) {
        throw UserNotAuthorizedException(methodPath);
      }

      response = await http.post(url,
          headers: Map.from(_requestHeaders)..["Authorization"] = "Bearer $_accessToken", body: payload);
    } else {
      response = await http.post(url, headers: _requestHeaders, body: payload);
    }

    return response.body;
  }

  Future<String> _executeBaseNoPayload(String methodPath, bool withAccessToken) async {
    Uri url = Uri.parse("$_baseApiUri/$methodPath");
    Response? response;
    if (withAccessToken) {
      if (_accessToken == null) {
        throw UserNotAuthorizedException(methodPath);
      }

      response = await http.post(url,
          headers: Map.from(_requestHeaders)..["Authorization"] = "Bearer $_accessToken");
    } else {
      response = await http.post(url, headers: _requestHeaders);
    }

    return response.body;
  }
}
