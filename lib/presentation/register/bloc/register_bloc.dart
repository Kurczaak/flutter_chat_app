import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/model/param/register_user_param.dart';
import 'package:flutter_chat_app/domain/use_case/register_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this._registerUserUseCase) : super(const RegisterState()) {
    on<RegisterEvent>((event, emit) async {
      await event.map(
        emailChanged: (emailChanged) async =>
            _onEmailChanged(emailChanged, emit),
        passwordChanged: (passwordChanged) async =>
            _onPasswordChanged(passwordChanged, emit),
        submitted: (submitted) async => _onSubmitted(submitted, emit),
        usernameChanged: (usernameChanged) async =>
            _onUsernameChanged(usernameChanged, emit),
      );
    });
  }

  final RegisterUserUseCase _registerUserUseCase;

  void _onUsernameChanged(_UsernameChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(username: event.username));
  }

  void _onEmailChanged(_EmailChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<RegisterState> emit,
  ) async {
    if (state.email.isEmpty || state.password.isEmpty) {
      emit(state.copyWith(status: const RegisterStatus.failure()));
      return;
    }
    emit(state.copyWith(status: const RegisterStatus.submitting()));
    final result = await _registerUserUseCase.call(
      RegisterUserParam(
        email: state.email,
        password: state.password,
        name: state.username,
      ),
    );
    emit(
      result.fold(
        (l) => state.copyWith(status: const RegisterStatus.failure()),
        (r) => state.copyWith(status: const RegisterStatus.success()),
      ),
    );
  }
}
