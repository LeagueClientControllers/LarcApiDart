// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventCollection _$EventCollectionFromJson(Map<String, dynamic> json) =>
    EventCollection()
      ..deviceEvents = (json['deviceEvents'] as List<dynamic>)
          .map((e) => DeviceEvent.fromJson(e as Map<String, dynamic>))
          .toList()
      ..clientEvents = (json['clientEvents'] as List<dynamic>)
          .map((e) => ClientEvent.fromJson(e as Map<String, dynamic>))
          .toList()
      ..commandEvents = (json['commandEvents'] as List<dynamic>)
          .map((e) => CommandEvent.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EventCollectionToJson(EventCollection instance) =>
    <String, dynamic>{
      'deviceEvents': instance.deviceEvents,
      'clientEvents': instance.clientEvents,
      'commandEvents': instance.commandEvents,
    };
