library token_service;

import 'package:chicken_storage/chicken_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:token_service/token_service.dart';

export 'package:token_service/di/micropackage.module.dart';

@Singleton(as: TokenService)
class TokenServiceImpl implements TokenService {
  TokenServiceImpl(this._secureStorage);

  final ChickenSecureStorage _secureStorage;

  @override
  String get accessTokenKey => 'access_token';

  @override
  String get refreshTokenKey => 'refresh_token';

  // Create
  /// Save the access token to the secure storage
  @override
  Future<void> saveAccessToken(String accessToken) =>
      _secureStorage.write(accessTokenKey, accessToken);

  /// Save the refresh token to the secure storage
  @override
  Future<void> saveRefreshToken(String refreshToken) =>
      _secureStorage.write(refreshTokenKey, refreshToken);

  // Read
  /// Get the access token from the secure storage
  @override
  Future<String?> get accessToken => _secureStorage.read(accessTokenKey);

  /// Get the refresh token from the secure storage
  @override
  Future<String?> get refreshToken => _secureStorage.read(refreshTokenKey);

  /// Get a stream of the access token
  @override
  Future<BehaviorSubject<String?>> get accessTokenStream =>
      _secureStorage.getEntryStream(accessTokenKey);

  /// Get a stream of the refresh token
  @override
  Future<BehaviorSubject<String?>> get refreshTokenStream =>
      _secureStorage.getEntryStream(refreshTokenKey);

  // Delete
  /// Remove the access token and the refresh token from the secure storage
  @override
  Future<void> deleteTokens() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }
}
