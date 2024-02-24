import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/use_case/get_auth_stream_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Singleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._getAuthStreamUseCase)
      : super(const AuthState.unauthenticated()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (authCheckRequested) async =>
            _onAuthCheckRequested(emit),
        signedOut: (signedOut) async => _onSignedOut(emit),
        unauthenticate: (unauthenticated) async => _onUnauthenticated(emit),
        authenticate: (authenticated) async => _onAuthenticated(emit),
      );
    });
  }

  final GetAuthStreamUseCase _getAuthStreamUseCase;

  StreamSubscription<bool>? _authStreamSubscription;

  Future<void> _onAuthCheckRequested(Emitter<AuthState> emit) async {
    final authStreamResult = await _getAuthStreamUseCase();
    await authStreamResult
        .fold((l) async => emit(const AuthState.unauthenticated()), (r) async {
      await _authStreamSubscription?.cancel();
      _authStreamSubscription = r.listen((isAuthenticated) {
        if (isAuthenticated) {
          add(const AuthEvent.authenticate());
        } else {
          add(const AuthEvent.unauthenticate());
        }
      });
    });
  }

  Future<void> _onSignedOut(Emitter<AuthState> emit) async {
    // TODO(Kura): Implement
    emit(const AuthState.unauthenticated());
  }

  void _onAuthenticated(Emitter<AuthState> emit) {
    emit(const AuthState.authenticated());
  }

  void _onUnauthenticated(Emitter<AuthState> emit) {
    emit(const AuthState.unauthenticated());
  }

  @override
  Future<void> close() async {
    await _authStreamSubscription?.cancel();
    await super.close();
  }
}
