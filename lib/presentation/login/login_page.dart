import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/presentation/common/form_field.dart';
import 'package:flutter_chat_app/presentation/common/progress_indicator.dart';
import 'package:flutter_chat_app/presentation/login/bloc/login_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          emailController.text = state.email;
          passwordController.text = state.password;
        },
        builder: (context, state) {
          return state.status.map(
            initial: (_) => _LoginForm(
              emailController: emailController,
              passwordController: passwordController,
            ),
            submitting: (_) => const ChickenProgressIndicator(),
            success: (_) => const _SuccessWidget(),
            failure: (_) => const _FailureWidget(),
          );
        },
      ),
    );
  }
}

// TODO (Kura) Temp, remove
class _FailureWidget extends StatelessWidget {
  const _FailureWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Failure'));
  }
}

// TODO (Kura) Temp, remove
class _SuccessWidget extends StatelessWidget {
  const _SuccessWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Success'));
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Login Page'), // TODO (Kura): Localize. out-of-scope

        Column(
          children: [
            ChickenFormField(
              labelText: 'Email',
              // TODO (Kura): Localize. out-of-scope
              controller: emailController,
              onChanged: (value) => _onEmailChanged(context, value),
            ),
            ChickenFormField(
              labelText: 'Password',
              // TODO (Kura): Localize. out-of-scope
              controller: passwordController,
              onChanged: (value) => _onPasswordChanged(context, value),
            ),
            _LoginButton(
              onPressed: () => _onSubmitted(context),
            ),
          ],
        ),
      ],
    );
  }

  void _onEmailChanged(BuildContext context, String value) {
    context.read<LoginBloc>().add(
          LoginEvent.emailChanged(email: value),
        );
  }

  void _onPasswordChanged(BuildContext context, String value) {
    context.read<LoginBloc>().add(
          LoginEvent.passwordChanged(password: value),
        );
  }

  void _onSubmitted(BuildContext context) {
    context.read<LoginBloc>().add(
          LoginEvent.submitted(),
        );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Login'), // TODO (Kura): Localize. out-of-scope
    );
  }
}
