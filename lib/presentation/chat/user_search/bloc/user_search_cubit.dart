import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/use_case/chat/search_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_search_cubit.freezed.dart';
part 'user_search_state.dart';

@injectable
class UserSearchCubit extends Cubit<UserSearchState> {
  UserSearchCubit(this._searchUserUseCase)
      : super(const UserSearchState.idle());

  final SearchUserUseCase _searchUserUseCase;

  Future<List<ChatUser>> searchUserByName(
    String username,
  ) async {
    if (username.isEmpty) return [];
    final result = await _searchUserUseCase(username);
    return result.fold(
      (failure) {
        emit(const UserSearchState.error());
        return [];
      },
      (result) {
        emit(const UserSearchState.idle());
        return result;
      },
    );
  }
}
