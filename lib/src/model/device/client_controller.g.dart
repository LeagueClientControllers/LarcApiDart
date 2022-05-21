// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientController _$ClientControllerFromJson(Map<String, dynamic> json) =>
    ClientController(
      json['id'] as int,
      json['name'] as String,
      json['isOnline'] as bool,
      json['client'] == null
          ? null
          : LeagueClient.fromJson(json['client'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClientControllerToJson(ClientController instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isOnline': instance.isOnline,
      'client': instance.client,
    };
