import 'package:base/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/failure/user_repository_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:user_onboarding/user_onboarding.dart';

@injectable

/// GetAuthStreamUseCase is a use case used to get the authentication stream
class GetAuthStreamUseCase
    extends UseCaseNoParam<UserRepositoryFailure, Stream<bool>> {
  /// GetAuthStreamUseCase constructor takes a [UserRepository] as a dependency
  GetAuthStreamUseCase({required UserOnboarder userRepository})
      : _userOnboarder = userRepository;

  final UserOnboarder _userOnboarder;

  @override
  Future<Either<UserRepositoryFailure, Stream<bool>>> execute(
    void param,
  ) async {
    final stream = await _userOnboarder.authenticationStream;
    return right(stream);
  }
}
