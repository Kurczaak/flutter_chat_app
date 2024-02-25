import 'package:base/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/failure/mappers.dart';
import 'package:flutter_chat_app/domain/model/failure/user_repository_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:user_onboarding/user_onboarder.dart';

@Injectable()
class LogOutUseCase extends UseCaseNoParam<UserRepositoryFailure, Unit> {
  LogOutUseCase(this._userOnboarder);

  final UserOnboarder _userOnboarder;

  @override
  Future<Either<UserRepositoryFailure, Unit>> execute(void param) async =>
      (await _userOnboarder.logout())
          .fold((l) => Left(l.toRepositoryFailure()), Right.new);
}
