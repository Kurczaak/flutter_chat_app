import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/common/form_field.dart';
import 'package:flutter_chat_app/presentation/common/onboarding/onboarding_wrapper.dart';
import 'package:flutter_chat_app/presentation/common/onboarding/password_form_field.dart';
import 'package:flutter_chat_app/presentation/common/progress_indicator.dart';
import 'package:flutter_chat_app/presentation/login/bloc/login_bloc.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';
import 'package:flutter_chat_app/style/app_gap.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: const SafeArea(
        child: Scaffold(
          body: _PageBody(),
        ),
      ),
    );
  }
}

class _PageBody extends HookWidget {
  const _PageBody();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return BlocConsumer<LoginBloc, LoginState>(
      listener: _handleListener, // TODO(Kura): Localize. out-of-scope
      builder: (context, state) {
        return Padding(
          padding: AppDimens.wrapPadding,
          child: state.status.maybeWhen(
            submitting: () => const ChickenProgressIndicator(),
            orElse: () => _LoginForm(
              emailController: emailController,
              passwordController: passwordController,
            ),
          ),
        );
      },
    );
  }

  void _handleListener(BuildContext context, LoginState state) {
    if (state.status.isFailure) {
      context.showErrorSnackBar(
        'Something went wrong. Please try again.',
      );
      context.read<LoginBloc>().add(LoginEvent.failureMessageShown());
    }
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
    return OnboardingWrapper(
      title: 'Login', // TODO: Localize. out-of-scope
      subtitle: 'Welcome back', // TODO: Localize. out-of-scope
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gap.listSmall,
              ChickenFormField(
                labelText: 'Email',
                // TODO(Kura): Localize. out-of-scope
                controller: emailController,
                onChanged: (value) => _onEmailChanged(context, value),
              ),
              Gap.listSmall,
              PasswordFormField(
                // TODO(Kura): Localize. out-of-scope
                controller: passwordController,
                onChanged: (value) => _onPasswordChanged(context, value),
              ),
              Gap.listMedium,
              _LoginButton(
                onPressed: () => _onSubmitted(context),
              ),
              Gap.listSmall,
              const _SignUpButton(),
            ],
          ),
        ],
      ),
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
      child: const Text('Login'), // TODO(Kura): Localize. out-of-scope
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Text('New User Sign Up'), // TODO: Localize. out-of-scope
      onPressed: () => context.navigator.pushNamed('/register'),
    );
  }
}
