import 'package:json_annotation/json_annotation.dart';

/// Enumerates all possible types of events that can happen to the device
enum DeviceEventType
{
	/// New device has been added
	@JsonValue("DeviceAdded")
	deviceAdded,

	/// One of the device's properties has been changed
	@JsonValue("DeviceChanged")
	deviceChanged,

	/// Device has been removed
	@JsonValue("DeviceRemoved")
	deviceRemoved,
}
