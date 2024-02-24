library token_service;

import 'package:rxdart/rxdart.dart';

export 'package:token_service/di/micropackage.module.dart';

abstract class TokenService {
  /// The key for the access token
  String get accessTokenKey;

  /// The key for the refresh token
  String get refreshTokenKey;

  // Create
  /// Save the access token to the secure storage
  Future<void> saveAccessToken(String accessToken);

  /// Save the refresh token to the secure storage
  Future<void> saveRefreshToken(String refreshToken);

  // Read
  /// Get the access token from the secure storage
  Future<String?> get accessToken;

  /// Get the refresh token from the secure storage
  Future<String?> get refreshToken;

  /// Get a stream of the access token
  Future<BehaviorSubject<String?>> get accessTokenStream;

  /// Get a stream of the refresh token
  Future<BehaviorSubject<String?>> get refreshTokenStream;

  // Delete
  /// Remove the access token and the refresh token from the secure storage
  Future<void> deleteTokens();
}
