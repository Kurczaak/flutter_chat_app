import 'package:base/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/failure/mappers.dart';
import 'package:flutter_chat_app/domain/model/failure/user_repository_failure.dart';
import 'package:flutter_chat_app/domain/model/param/register_user_param.dart'
    as domain;
import 'package:injectable/injectable.dart';
import 'package:user_onboarding/user_onboarding.dart';

/// Used to register a new user
@injectable
class RegisterUserUseCase
    extends UseCase<UserRepositoryFailure, Unit, domain.RegisterUserParam> {
  /// RegisterUserUseCase constructor
  RegisterUserUseCase(this._userOnboarder);
  final UserOnboarder _userOnboarder;

  @override
  Future<Either<UserRepositoryFailure, Unit>> execute(
    domain.RegisterUserParam param,
  ) =>
      _userOnboarder
          .registerUser(
            RegisterUserParam(
              email: param.email,
              password: param.password,
              name: param.name,
              avatar: null,
            ),
          )
          .then((value) => value.fold(
              (l) => Left(l.toRepositoryFailure()), (r) => Right(r)));
}
