import 'package:json_annotation/json_annotation.dart';

/// Possible API method errors enumeration
enum MethodError
{
	/// Occurs when API key was not provided or was wrong
	@JsonValue("WrongApiKeyError")
	wrongApiKey,

	/// Occurs when provided access tokens was invalid
	/// during the call of the method that requires access token to execute
	@JsonValue("WrongAccessTokenError")
	wrongAccessToken,

	/// Occurs when access tokens was not provided
	/// during the call of the method that requires access token to execute
	@JsonValue("AccessTokenNotProvidedError")
	accessTokenNotProvided,

	/// Occurs when wrong email, nickname or password was used for authorization
	@JsonValue("WrongNicknameEmailOrPasswordError")
	wrongNicknameEmailOrPassword,

	/// Occurs when API method that requires JSON parameters was provided
	/// with body that contains JSON syntax errors
	@JsonValue("JsonParsingError")
	jsonParsingError,

	/// Occurs when API method that requires some parameters
	/// was not provided with them
	@JsonValue("MissingMethodParametersError")
	missingMethodParameters,

	/// Occurs when the API method parameter is invalid
	@JsonValue("InvalidMethodParameterError")
	invalidMethodParameter,

	/// Occurs when the API method not found on requested URL.
	@JsonValue("MethodNotFoundError")
	methodNotFound,
}
