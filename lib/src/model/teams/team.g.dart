// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map<String, dynamic> json) => Team()
  ..id = json['id'] as int
  ..name = json['name'] as String
  ..members = (json['members'] as List<dynamic>)
      .map((e) => Member.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'members': instance.members,
    };
