//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

import 'dart:async';

import 'package:dart_library_generator/utilities.dart';
import 'package:larc_api_dart/model.dart';

abstract class IDeviceCategory {
  /// Returns all the devices that are registered
  /// to the current user.
  Future<List<Device>> getDevices();

  /// Fetches information about the device by its id.
  ///
  /// [id] -
  @ControllerOnly()
  Future<Device> getDeviceById(int id);

  /// Changes the name of the device.
  ///
  /// [name] -
  @DeviceOnly()
  Future changeDeviceName(String name);

  /// Gets all the client controller that are registered
  /// to the current user.
  @DeviceOnly()
  Future<List<ClientController>> getControllers();

  /// Fetches information about the controller by its id.
  ///
  /// [id] -
  @DeviceOnly()
  Future<ClientController> getControllerById(int id);

  /// Changes the name of the controller.
  ///
  /// [name] -
  @ControllerOnly()
  Future changeControllerName(String name);
}
