import 'package:auth_api/auth_api.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:token_service/token_service.dart';
import 'package:user_onboarding/model/chicken_user.dart';
import 'package:user_onboarding/src/exception_mappers.dart';
import 'package:user_onboarding/src/model/mappers.dart';
import 'package:user_onboarding/src/model/user_dto.dart';
import 'package:user_onboarding/src/request_mappers.dart';
import 'package:user_onboarding/user_onboarding.dart';

@Singleton(as: UserOnboarder)

/// UserOnboarderImplementation is the implementation of [UserOnboarder]
class UserOnboarderImplementation implements UserOnboarder {
  /// UserOnboarderImplementation constructor takes an [AuthApi] as a dependency
  UserOnboarderImplementation(this._authApi, this._tokenService);

  final AuthApi _authApi;
  final TokenService _tokenService;

  @override
  Future<Either<OnboardingFailure, Unit>> registerUser(
    RegisterUserParam param,
  ) async {
    try {
      final result = await _authApi.register(param.toRegisterRequestBody());
      if (result.statusCode >= 200 && result.statusCode < 300) {
        return const Right(unit);
      } else {
        return const Left(OnboardingFailure.unexpected());
      }
    } on HttpException catch (e) {
      return Left(e.toFailure());
    } catch (e) {
      return const Left(OnboardingFailure.unexpected());
    }
  }

  @override
  Future<Either<OnboardingFailure, Unit>> login(LoginParam param) async {
    try {
      final result = await _authApi.login(param.toLoginRequestBody());

      final accessToken = result.accessToken;
      final refreshToken = result.refreshToken;

      await _saveTokens(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
      return const Right(unit);
    } on HttpException catch (e) {
      return Left(e.toFailure());
    } catch (e) {
      return const Left(OnboardingFailure.unexpected());
    }
  }

  @override
  Future<Either<OnboardingFailure, Unit>> refreshTokens() async {
    try {
      final result = await _authApi.refreshTokens();

      await _saveTokens(
        accessToken: result.accessToken,
        refreshToken: result.refreshToken,
      );
      return const Right(unit);
    } on HttpException catch (e) {
      return Left(e.toFailure());
    } catch (e) {
      return const Left(OnboardingFailure.unexpected());
    }
  }

  Future<void> _saveTokens({
    required String accessToken,
    required String? refreshToken,
  }) async {
    await Future.wait([
      _tokenService.saveAccessToken(accessToken),
      if (refreshToken != null) _tokenService.saveRefreshToken(refreshToken),
    ]);
  }

  @override
  Future<Stream<bool>> get authenticationStream async {
    final stream = await _tokenService.accessTokenStream;
    return stream.map((event) => event != null && event.isNotEmpty);
  }

  @override
  Future<Either<OnboardingFailure, Unit>> logout() async {
    await _tokenService.deleteTokens();
    return right(unit);
  }

  @override
  // TODO: implement user
  Future<Either<OnboardingFailure, ChickenUser>> get user async {
    try {
      final token = await _tokenService.accessToken
          .then((value) => JwtDecoder.decode(value!));
      final user = UserDTO.fromJson(token['user']).toChickenModel();
      return Right(user);
    } catch (_) {
      return const Left(OnboardingFailure.loggedOut());
    }
  }
}
