// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FakeAuthApiRegisterRequestBody _$FakeAuthApiRegisterRequestBodyFromJson(
        Map<String, dynamic> json) =>
    FakeAuthApiRegisterRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$FakeAuthApiRegisterRequestBodyToJson(
        FakeAuthApiRegisterRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
      'avatar': instance.avatar,
    };

LocalAuthApiRegisterRequestBody _$LocalAuthApiRegisterRequestBodyFromJson(
        Map<String, dynamic> json) =>
    LocalAuthApiRegisterRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$LocalAuthApiRegisterRequestBodyToJson(
        LocalAuthApiRegisterRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'username': instance.username,
    };
