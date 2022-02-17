/// Base class for instances that should free its resources when finalized
abstract class IDisposable {
  /// Here resources that required to be freed should be freed
  void dispose();
}

/// Base class for instances that should free its resources asynchronously when finalized
abstract class IAsyncDisposable {
  /// Here resources that required to be freed should be freed
  Future dispose();
}
