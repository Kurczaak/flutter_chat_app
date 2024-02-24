import 'package:auth_api/models/login_response.dart';
import 'package:auth_api/models/logout_response.dart';
import 'package:auth_api/models/refresh_token_response.dart';
import 'package:auth_api/models/register_response.dart';
import 'package:auth_api/models/request/login_request_body.dart';
import 'package:auth_api/models/request/register_request_body.dart';

/// Definition of [AuthApi] class. It should be extended by all api classes.
abstract class AuthApi {
  /// Default constructor.
  /// [httpClient] is a required client used for HTTP calls.
  /// [baseUrl] is used as a base url for all HTTP calls.
  /// [loginPath] is used as a path for login HTTP call.
  /// [registerPath] is used as a path for register HTTP call.
  /// [logoutPath] is used as a path for logout HTTP call.
  /// [refreshTokenPath] is used as a path for refresh token HTTP call.
  AuthApi({
    required this.baseUrl,
    required this.loginPath,
    required this.registerPath,
    required this.logoutPath,
    required this.refreshTokenPath,
  });

  final String baseUrl;

  /// Path for login HTTP call.
  final String loginPath;

  /// Path for register HTTP call.
  final String registerPath;

  /// Path for logout HTTP call.
  final String logoutPath;

  /// Path for refresh token HTTP call.
  final String refreshTokenPath;

  /// Email and password login method
  Future<LoginRepsponse> login(LoginRequestBody loginRequestBody);

  /// Email and password registration method
  Future<RegisterResponse> register(RegisterRequestBody registerRequestBody);

  /// Logout method
  Future<LogoutResponse> logout();

  /// Refresh token method
  Future<RefreshTokenRepsponse> refreshTokens();
}
