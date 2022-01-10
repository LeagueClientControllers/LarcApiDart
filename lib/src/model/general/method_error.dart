import 'package:json_annotation/json_annotation.dart'; 

/// Possible API method errors enumeration.
enum MethodError {
  /// Occures when API key was not provided or was wrong.
  @JsonValue("WrongApiKeyError")
  wrongApiKey,

  /// Occures when provided access tokens was invalid
  /// during the call of the method that requires access token to execute.
  @JsonValue("WrongAccessTokenError")
  wrongAccessToken, 

  /// Occures when access tokens was not provided
  /// during the call of the method that requires access token to execute.
  @JsonValue("AccessTokenNotProvidedError")
  accessTokenNotProvided, 

  /// Occures when wrong email, nickname or password was used for authorization.
  @JsonValue("WrongNicknameEmailOrPasswordError")
  wrongNicknameEmailOrPassword, 

  /// Occures when API method that requires json parameters was provided
  /// with body that contains json syntax errors.
  @JsonValue("JsonParsingError")
  jsonParsingError, 

  /// Occures when API method that requires some parameters
  /// was not provided with them.
  @JsonValue("MissingMethodParametersError")
  missingMethodParameters, 

  /// Occures when the API method parameter is invalid.
  @JsonValue("InvalidMethodParameterError")
  invalidMethodParameter, 
}