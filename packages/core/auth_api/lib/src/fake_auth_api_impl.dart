import 'package:auth_api/auth_api_client.dart';
import 'package:auth_api/models/login_response.dart';
import 'package:auth_api/models/logout_response.dart';
import 'package:auth_api/models/refresh_token_response.dart';
import 'package:auth_api/models/register_response.dart';
import 'package:auth_api/models/request/login_request_body.dart';
import 'package:auth_api/models/request/register_request_body.dart';
import 'package:chicken_http/chicken_http.dart';

import 'response_mappers.dart';

// @Singleton(as: AuthApi)

/// An implementation of [AuthApi] using https://fakeapi.platzi.com/ API.
/// It should be used for testing purposes only.
class FakeAuthApiImpl implements AuthApi {
  /// Default constructor.
  FakeAuthApiImpl({
    required this.httpClient,
  });

  final ChickenHttpClient httpClient;

  @override
  final String baseUrl = 'https://api.escuelajs.co/api/v1';
  @override
  final String loginPath = '/auth/login';
  @override
  final String registerPath = '/auth/register';
  @override
  final String logoutPath = '/auth/logout';
  @override
  final String refreshTokenPath = '/auth/refresh-token';

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
          .then((value) => value.toRegisterResponse);
    } catch (e) {
      rethrow;
    }
  }
}
