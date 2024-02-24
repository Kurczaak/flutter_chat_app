import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/presentation/common/form_field.dart';
import 'package:flutter_chat_app/presentation/common/onboarding/onboarding_wrapper.dart';
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
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Padding(
          padding: AppDimens.wrapPadding,
          child: state.status.map(
            initial: (_) => _LoginForm(
              emailController: emailController,
              passwordController: passwordController,
            ),
            submitting: (_) => const ChickenProgressIndicator(),
            success: (_) => const _SuccessWidget(),
            failure: (_) => const _FailureWidget(),
          ),
        );
      },
    );
  }
}

// TODO(Kura): Temp, remove
class _FailureWidget extends StatelessWidget {
  const _FailureWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Failure'));
  }
}

// TODO(Kura): Temp, remove
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
              ChickenFormField(
                labelText: 'Password',
                // TODO(Kura): Localize. out-of-scope
                controller: passwordController,
                onChanged: (value) => _onPasswordChanged(context, value),
              ),
              Gap.listMedium,
              _LoginButton(
                onPressed: () => _onSubmitted(context),
              ),
              Gap.listMedium,
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
      onPressed: () => Navigator.of(context).pushNamed('/register'),
    );
  }
}
