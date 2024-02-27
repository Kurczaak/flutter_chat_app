part of 'user_search_cubit.dart';

@freezed
class UserSearchState with _$UserSearchState {
  const factory UserSearchState.idle() = _Idle;
  const factory UserSearchState.loading() = _Loading;
  const factory UserSearchState.error() = _Error;
}
