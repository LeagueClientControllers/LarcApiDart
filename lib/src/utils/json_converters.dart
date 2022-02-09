DateTime? fromUnixTimestampToDateTime(int? timestamp) {
  if (timestamp == null) {
    return null;
  }

  return DateTime.fromMillisecondsSinceEpoch(timestamp, isUtc: true);
}

int? fromDateTimeToUnixTimestamp(DateTime? dateTime) {
  if (dateTime == null) {
    return null;
  }

  return dateTime.toUtc().millisecondsSinceEpoch;
}
