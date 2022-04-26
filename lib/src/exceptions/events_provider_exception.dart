/// The exception that is thrown while connecting to the events provider or when receiving incorrect messages from it.
class EventsProviderException implements Exception {
  String? message;
  EventsProviderException([this.message]);

  @override
  String toString() {
    return "EventsProviderException: ${message ?? ""}";
  }
}