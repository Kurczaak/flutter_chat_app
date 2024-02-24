import 'package:auth_api/models/login_response.dart';
import 'package:auth_api/models/logout_response.dart';
import 'package:auth_api/models/refresh_token_response.dart';
import 'package:auth_api/models/register_response.dart';
import 'package:chicken_http/response/http_response.dart';

import 'constants.dart';

extension HttpResponseX on HttpResponse {
  LoginRepsponse get toLoginResponse => LoginRepsponse(
      accessToken: data[Keys.accessToken],
      refreshToken: data[Keys.refreshToken],
      statusCode: statusCode);

  LogoutResponse get toLogoutResponse =>
      LogoutResponse(statusCode: data[Keys.statusCode]);

  RefreshTokenRepsponse get toRefreshTokenResponse => RefreshTokenRepsponse(
        accessToken: data[Keys.accessToken],
        refreshToken: data[Keys.refreshToken],
        statusCode: data[Keys.statusCode],
      );

  RegisterResponse get toRegisterResponse => RegisterResponse(
        statusCode: statusCode,
      );
}
