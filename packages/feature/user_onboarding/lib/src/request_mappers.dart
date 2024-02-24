import 'package:auth_api/models/request/login_request_body.dart';
import 'package:auth_api/models/request/register_request_body.dart';
import 'package:user_onboarding/request/login_param.dart';
import 'package:user_onboarding/request/register_user_param.dart';

extension LoginParamMapper on LoginParam {
  LoginRequestBody toLoginRequestBody() => FakeAuthApiLoginRequestBody(
        email: email,
        password: password,
      );
}

extension RegisterParamMapper on RegisterUserParam {
  RegisterRequestBody toRegisterRequestBody() =>
      LocalAuthApiRegisterRequestBody(
        email: email,
        password: password,
        username: name,
      );
}
