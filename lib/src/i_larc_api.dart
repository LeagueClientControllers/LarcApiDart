import 'package:larc_api_dart/categories.dart';
import 'package:larc_api_dart/model.dart';
import 'package:larc_api_dart/src/security/i_user_credentials_storage.dart';
import 'package:larc_api_dart/src/services/commands_service.dart';
import 'package:larc_api_dart/src/services/event_service.dart';
import 'package:larc_api_dart/src/utils/base_json_serializable.dart';
import 'package:larc_api_dart/src/utils/i_disposable.dart';

/// Abstraction of the head API class.
abstract class ILarcApi implements IAsyncDisposable {
  /// API host.
  static const String apiHost = bool.fromEnvironment("dart.vm.product") ? "www.larc.ml/api" : "www.larc.ml/dev";

  /// Base url for API requests.
  static const String baseApiUri = "http://$apiHost";

// #region <auto-generated> Generated code. Do not modify by hand.
  /// Contains methods that are used to control the league game client.
  IClientCategory get client;

  /// Contains methods that are used to retrieve or update information about user's devices.
  IDeviceCategory get device;

  /// Contains methods that are used to get user information or are related to the authentication.
  IIdentityCategory get identity;
// #endregion

  /// Service to simplify work with user events.
  EventService get events;

  /// Service to send commands and wait for their results properly.
  CommandsService get commands;

  /// Is the credentials exists and they are valid to authorize user in the api.
  bool get userAuthorized => accessToken != null;

  /// Token string that is used to call methods that require authorization.
  String? get accessToken;

  /// Initializes API module with [credentialsStorage].
  /// If some access token was stored in the [credentialsStorage],
  /// tries to refresh it and store new access token in the storage.
  Future init({IUserCredentialsStorage? credentialsStorage, String? accessToken});

  /// Authorizes current device using login method.
  /// Returns true if authorization was successful and false when provided wrong credentials.
  Future<bool> authorizeDevice(String login, String password, String deviceName, DeviceType deviceType,
      [bool saveCredentials = false]);

  /// Sets current access token that is used to execute methods
  /// that require authorization to the [accessToken], validating it.
  ///
  /// If [store] is true, stores access token in [IUserCredentialsStorage]
  /// that has been provided in the [init].
  Future updateAccessToken(String accessToken, {bool store = false});

  /// Executes API method that accepts no parameters
  /// and returns basic response, located at the [methodPath].
  Future execute(String methodPath, {bool withAccessToken = true});

  /// Executes API method that accepts no parameters
  /// and returns complex [TResponse], located at the [methodPath],
  /// creating instance of [TResponse] using [responseFactory]
  /// and filling it with deserialized data from response after execution.
  Future<TResponse> executeWithResponse<TResponse extends ApiResponse>(
      String methodPath, TResponse Function(Map<String, dynamic> json) responseFactory,
      {bool withAccessToken = true});

  /// Executes API method that accepts complex [TParameters]
  /// and returns basic response, located at the [methodPath],
  /// serializing [params] and sending them in the request body.
  Future executeWithParameters<TParameters extends BaseJsonSerializable<TParameters>>(String methodPath, TParameters params,
      {bool withAccessToken = true});

  /// Executes API method that accepts complex [TParameters]
  /// and returns complex [TResponse], located at the [methodPath],
  /// serializing [params] and sending them in the request body,
  /// creating instance of [TResponse] using [responseCreator]
  /// and filling it with deserialized data from response after execution.
  Future<TResponse> executeWithParametersAndResponse<TResponse extends ApiResponse, TParameters extends BaseJsonSerializable<TParameters>>(
      String methodPath, TParameters params, TResponse Function(Map<String, dynamic> json) responseFactory,
      {bool withAccessToken = true});
}
