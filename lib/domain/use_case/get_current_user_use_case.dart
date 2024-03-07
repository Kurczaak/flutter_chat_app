import 'package:base/domain/usecases/base_use_case.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/failure/user_repository_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:user_onboarding/user_onboarder.dart';

@injectable
class GetCurrentUserUseCase
    extends UseCaseNoParam<UserRepositoryFailure, ChatroomUser> {
  GetCurrentUserUseCase({required UserOnboarder userOnboarder})
      : _userOnboarder = userOnboarder;

  final UserOnboarder _userOnboarder;

  @override
  Future<Either<UserRepositoryFailure, ChatroomUser>> execute(
      void param) async {
    final result = await _userOnboarder.user;
    return result.fold(
      (l) => left(const UserRepositoryFailure.unexpectedError()),
      (r) => right(
        ChatroomUser(id: int.parse(r.id), username: r.username, email: r.email),
      ),
    );
  }
}
