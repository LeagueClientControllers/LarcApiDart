// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterParameters _$RegisterParametersFromJson(Map<String, dynamic> json) =>
    RegisterParameters(
      json['username'] as String,
      json['email'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$RegisterParametersToJson(RegisterParameters instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
    };
