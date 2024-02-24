import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/presentation/common/form_field.dart';
import 'package:flutter_chat_app/presentation/common/progress_indicator.dart';
import 'package:flutter_chat_app/presentation/register/bloc/register_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final usernameController = useTextEditingController();
    return BlocProvider(
      create: (context) => getIt<RegisterBloc>(),
      child: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {
          emailController.text = state.email;
          passwordController.text = state.password;
          usernameController.text = state.username;
        },
        builder: (context, state) {
          return state.status.map(
            initial: (_) => _RegisterForm(
              emailController: emailController,
              passwordController: passwordController,
              usernameController: usernameController,
            ),
            submitting: (_) => const ChickenProgressIndicator(),
            success: (_) => const Text('Success'),
            failure: (_) => const Text('Failure'),
          );
        },
      ),
    );
  }
}

class _RegisterForm extends StatelessWidget {
  const _RegisterForm({
    required this.emailController,
    required this.passwordController,
    required this.usernameController,
    super.key,
  });
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Register Page'), // TODO (Kura): Localize. out-of-scope

        Column(
          children: [
            ChickenFormField(
              labelText: 'Username',
              // TODO (Kura): Localize. out-of-scope
              controller: usernameController,
              onChanged: (value) => _onUsernameChanged(context, value),
            ),
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
            _RegisterButton(
              onPressed: () => _onSubmitted(context),
            ),
          ],
        ),
      ],
    );
  }

  void _onUsernameChanged(BuildContext context, String value) {
    context.read<RegisterBloc>().add(
          RegisterEvent.usernameChanged(username: value),
        );
  }

  void _onEmailChanged(BuildContext context, String value) {
    context.read<RegisterBloc>().add(
          RegisterEvent.emailChanged(email: value),
        );
  }

  void _onPasswordChanged(BuildContext context, String value) {
    context.read<RegisterBloc>().add(
          RegisterEvent.passwordChanged(password: value),
        );
  }

  void _onSubmitted(BuildContext context) {
    context.read<RegisterBloc>().add(
          const RegisterEvent.submitted(),
        );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Register'), // TODO (Kura): Localize. out-of-scope
    );
  }
}
