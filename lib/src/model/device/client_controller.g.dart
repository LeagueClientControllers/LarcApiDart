// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientController _$ClientControllerFromJson(Map<String, dynamic> json) =>
    ClientController()
      ..id = json['id'] as int
      ..name = json['name'] as String
      ..isOnline = json['isOnline'] as bool;

Map<String, dynamic> _$ClientControllerToJson(ClientController instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isOnline': instance.isOnline,
    };
