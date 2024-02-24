// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FakeAuthApiLoginRequestBody _$FakeAuthApiLoginRequestBodyFromJson(
        Map<String, dynamic> json) =>
    FakeAuthApiLoginRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$FakeAuthApiLoginRequestBodyToJson(
        FakeAuthApiLoginRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
