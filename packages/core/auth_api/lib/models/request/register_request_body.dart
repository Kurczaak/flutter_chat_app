import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_body.g.dart';

abstract class RegisterRequestBody {
  const RegisterRequestBody();

  Map<String, dynamic> toJson();
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class FakeAuthApiRegisterRequestBody implements RegisterRequestBody {
  FakeAuthApiRegisterRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.avatar,
  });

  final String email;
  final String password;
  final String name;
  final String avatar;

  @override
  Map<String, dynamic> toJson() => _$FakeAuthApiRegisterRequestBodyToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class LocalAuthApiRegisterRequestBody implements RegisterRequestBody {
  LocalAuthApiRegisterRequestBody({
    required this.email,
    required this.password,
    required this.username,
  });

  final String email;
  final String password;
  final String? username;

  @override
  Map<String, dynamic> toJson() =>
      _$LocalAuthApiRegisterRequestBodyToJson(this);
}
