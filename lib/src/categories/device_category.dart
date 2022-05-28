//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:async';

import 'package:larc_api_dart/categories.dart';
import 'package:larc_api_dart/core.dart';
import 'package:larc_api_dart/exceptions.dart';
import 'package:larc_api_dart/model.dart';

class DeviceCategory implements IDeviceCategory {
  DeviceCategory(this._api);

  final ILarcApi _api;

  @override
  Future<List<Device>> getDevices() async {
    final DevicesResponse response = await _api
        .executeWithResponse(r'device/getDevices', (Map<String, dynamic> json) => DevicesResponse.fromJson(json), withAccessToken: true);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add response validation */
    /* </auto-generated-safe-area> */
    return response.devices;
  }

  @override
  Future<Device> getDeviceById(int id) async {
    final GetByIdParameters parameters = GetByIdParameters(id);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    final DeviceResponse response = await _api.executeWithParametersAndResponse(
        r'device/getDeviceById', parameters, (Map<String, dynamic> json) => DeviceResponse.fromJson(json),
        withAccessToken: true);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add response validation */
    /* </auto-generated-safe-area> */
    return response.device;
  }

  @override
  Future changeDeviceName(String name) async {
    final ChangeNameParameters parameters = ChangeNameParameters(name);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'device/changeDeviceName', parameters, withAccessToken: true);
  }

  @override
  Future<List<ClientController>> getControllers() async {
    final ControllersResponse response = await _api.executeWithResponse(
        r'device/getControllers', (Map<String, dynamic> json) => ControllersResponse.fromJson(json),
        withAccessToken: true);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add response validation */
    /* </auto-generated-safe-area> */
    return response.controllers;
  }

  @override
  // TODO: Needs revision due to a new method signature
  Future<ClientController> getControllerById(int id) async {
    final GetByIdParameters parameters = GetByIdParameters(id);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    final ControllerResponse response = await _api.executeWithParametersAndResponse<ControllerResponse,
        GetByIdParameters>(r'device/getControllerById', parameters,
            (Map<String, dynamic> json) => ControllerResponse.fromJson(json), withAccessToken: true);

    return response.controller;
  }

  @override
  Future changeControllerName(String name) async {
    final ChangeNameParameters parameters = ChangeNameParameters(name);
    /* <auto-generated-safe-area> Code within tag borders shouldn't cause incorrect behavior and will be preserved. */
    /* 	TODO: Add parameters validation */
    /* </auto-generated-safe-area> */
    await _api.executeWithParameters(r'device/changeControllerName', parameters, withAccessToken: true);
  }
}
