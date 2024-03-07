part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.unauthenticated() = _Unauthenticated;
  const factory UserState.authenticated(ChatroomUser user) = _Authenticated;
}

extension UserStateExt on UserState {
  ChatroomUser? get user => maybeWhen(
        authenticated: (user) => user,
        orElse: () => null,
      );
}
