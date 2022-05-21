/// Base class for classes that are serializable with json_serializable package.
abstract class BaseJsonSerializable<T extends BaseJsonSerializable<T>> {
  /// Empty constructor.
  BaseJsonSerializable();

  /// Converts output of json decoded map to instance.
  BaseJsonSerializable.fromJson(Map<String, dynamic> json);

  /// Converts instance to map that will be encoded into json object.
  Map<String, dynamic> toJson();
}
