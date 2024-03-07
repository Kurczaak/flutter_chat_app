import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:flutter_chat_app/domain/use_case/get_current_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@Singleton()
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._getCurrentUserUseCase) : super(const _Unauthenticated()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        started: (_) async => _onStarted(emit),
      );
    });
  }

  final GetCurrentUserUseCase _getCurrentUserUseCase;

  Future<void> _onStarted(
    Emitter<UserState> emit,
  ) async {
    final userResult = await _getCurrentUserUseCase();
    await userResult.fold(
      (l) async => emit(const UserState.unauthenticated()),
      (r) async => emit(UserState.authenticated(r)),
    );
  }
}
