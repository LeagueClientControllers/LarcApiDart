import 'package:lcc_api_dart/src/model/device/client_controller.dart';
import 'package:lcc_api_dart/src/model/device/device_model.dart';

/// Contains methods of the /device/ API category.
abstract class IDeviceCategory
{
	/// Gets user's client controllers.
	Future<List<ClientController>> getControllers();

	/// Gets user's client controller by its id.
	Future<ClientController> getControllerById(int controllerId);

	/// Gets user devices.
	Future<List<DeviceModel>> getDevices();

	/// Gets user's device by its id.
	Future<DeviceModel> getDeviceById(int deviceId);
}
