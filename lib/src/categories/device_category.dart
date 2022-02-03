import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/categories/abstraction/i_device_category.dart';
import 'package:lcc_api_dart/src/model/lcc_api_dart_model.dart';

/// Contains methods of the /identity/ API category
class DeviceCategory implements IDeviceCategory {
  final ILccApi _api;
  DeviceCategory(this._api);

  @override
  Future<List<ClientController>> getControllers() async {
    ControllersResponse response = await _api.executeCResponse<ControllersResponse>(
        "device/getControllers", (json) => ControllersResponse.fromJson(json),
        withAccessToken: true);

    return response.controllers;
  }

  @override
  Future<ClientController> getControllerById(int controllerId) async {
    ControllerResponse response = await _api.executeCResponseSParameters("device/getControllerById",
        "controllerId", controllerId, (json) => ControllerResponse.fromJson(json));

    return response.controller;
  }

  @override
  Future<List<DeviceModel>> getDevices() async {
    DevicesResponse response = await _api.executeCResponse(
        "device/getDevices", (json) => DevicesResponse.fromJson(json),
        withAccessToken: true);

    return response.devices;
  }

  @override
  Future<DeviceModel> getDeviceById(int deviceId) async {
    DeviceResponse response = await _api.executeCResponseSParameters(
        "device/getDeviceById", "deviceId", deviceId, (json) => DeviceResponse.fromJson(json),
        withAccessToken: true);

    return response.device;
  }
}
