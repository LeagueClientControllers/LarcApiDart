/// Base class for classes that are serializable with json_serializable package.
abstract class BaseJsonSerializable<T extends BaseJsonSerializable<T>> {
  /// Converts output of json decoded map to instance.
  T fromJson(Map<String, dynamic> json);

  /// Converts instance to json encodable object.
  Map<String, dynamic> toJson();
}
