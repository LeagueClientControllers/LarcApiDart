import '../model/general/api_response.dart';

/// Base class for the complex API responses
abstract class BaseResponseSerializable<T extends BaseResponseSerializable<T>> with ApiResponse {
  /// Converts output of json decoded map to instance.
  @override
  T fromJson(Map<String, dynamic> json);

  /// Converts instance to json encodable object.
  @override
  Map<String, dynamic> toJson();
}
