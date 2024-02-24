import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_body.g.dart';

abstract class LoginRequestBody {
  const LoginRequestBody();

  Map<String, dynamic> toJson();
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class FakeAuthApiLoginRequestBody implements LoginRequestBody {
  FakeAuthApiLoginRequestBody({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  Map<String, dynamic> toJson() => _$FakeAuthApiLoginRequestBodyToJson(this);
}
