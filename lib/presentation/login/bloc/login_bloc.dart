import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/model/param/login_param.dart';
import 'package:flutter_chat_app/domain/use_case/login_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable

/// Login Bloc containing the business logic for the login form.
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  /// Default constructor.
  LoginBloc(this._loginUserUseCase) : super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        emailChanged: (emailChanged) async =>
            _onEmailChanged(emailChanged, emit),
        passwordChanged: (passwordChanged) async =>
            _onPasswordChanged(passwordChanged, emit),
        submitted: (submitted) async => _onSubmitted(submitted, emit),
      );
    });
  }

  final LoginUserUseCase _loginUserUseCase;

  void _onEmailChanged(_EmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitted(_Submitted event, Emitter<LoginState> emit) async {
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(status: const LoginStatus.failure()));
      return;
    }
    emit(state.copyWith(status: const LoginStatus.submitting()));
    final result = await _loginUserUseCase
        .call(LoginParam(email: state.email, password: state.password));
    emit(
      result.fold(
        (l) => state.copyWith(status: const LoginStatus.failure()),
        (r) => state.copyWith(status: const LoginStatus.success()),
      ),
    );
  }
}
