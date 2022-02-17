import 'dart:async';

/// Used to control process of constant events fetching.
class LongPollProcessController {
  Stream<Object?> get exceptionOccurred => _exceptionOccurredController.stream;
  final StreamController<Object?> _exceptionOccurredController = StreamController<Object?>.broadcast();

  bool __cancelled = false;
  bool get cancelled => __cancelled;
  set _cancelled(bool value) => __cancelled = value;

  void cancel() {
    _cancelled = true;
  }

  void onException(Object? e) {
    cancel();
    _exceptionOccurredController.sink.add(e);
  }
}
