import 'package:base/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/failure/mappers.dart';
import 'package:flutter_chat_app/domain/model/failure/user_repository_failure.dart';
import 'package:flutter_chat_app/domain/model/param/login_param.dart' as domain;
import 'package:injectable/injectable.dart';
import 'package:user_onboarding/user_onboarding.dart';

/// Used to login a user
@injectable
class LoginUserUseCase
    extends UseCase<UserRepositoryFailure, Unit, domain.LoginParam> {
  /// LoginUserUseCase constructor
  LoginUserUseCase(this._userOnboarder);
  final UserOnboarder _userOnboarder;

  @override
  Future<Either<UserRepositoryFailure, Unit>> execute(
          domain.LoginParam param) =>
      _userOnboarder
          .login(
            LoginParam(
              email: param.email,
              password: param.password,
            ),
          )
          .then((value) => value.fold(
              (l) => Left(l.toRepositoryFailure()), (r) => Right(r)));
}
