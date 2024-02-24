import 'package:auth_api/auth_api_client.dart';
import 'package:auth_api/models/login_response.dart';
import 'package:auth_api/models/logout_response.dart';
import 'package:auth_api/models/refresh_token_response.dart';
import 'package:auth_api/models/register_response.dart';
import 'package:auth_api/models/request/login_request_body.dart';
import 'package:auth_api/models/request/register_request_body.dart';
import 'package:chicken_http/chicken_http.dart';
import 'package:injectable/injectable.dart';

import 'response_mappers.dart';

@Singleton(as: AuthApi)

/// An implementation of [AuthApi] using my own local auth API.
/// It should be used for testing purposes only.
class LocalAuthApiImpl implements AuthApi {
  /// Default constructor.
  LocalAuthApiImpl({
    required this.httpClient,
  });

  final ChickenHttpClient httpClient;

  @override
  final String baseUrl = 'http://10.0.2.2:3000/api';
  @override
  final String loginPath = '/users/login';
  @override
  final String registerPath = '/users';
  @override
  final String logoutPath = '/users/logout';
  @override
  final String refreshTokenPath = '/users/refresh-token';

  @override
  Future<LoginRepsponse> login(LoginRequestBody loginRequestBody) => httpClient
      .post(
        '$baseUrl$loginPath',
        body: loginRequestBody.toJson(),
      )
      .then((value) => value.toLoginResponse);

  @override
  Future<LogoutResponse> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<RefreshTokenRepsponse> refreshTokens() {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  Future<RegisterResponse> register(RegisterRequestBody registerRequestBody) {
    try {
      return httpClient
          .post(
        '$baseUrl$registerPath',
        body: registerRequestBody.toJson(),
      )
          .then((value) {
        return value.toRegisterResponse;
      });
    } catch (e) {
      rethrow;
    }
  }
}
