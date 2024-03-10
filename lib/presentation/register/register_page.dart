import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/common/form_field.dart';
import 'package:flutter_chat_app/presentation/common/onboarding/onboarding_wrapper.dart';
import 'package:flutter_chat_app/presentation/common/onboarding/password_form_field.dart';
import 'package:flutter_chat_app/presentation/common/progress_indicator.dart';
import 'package:flutter_chat_app/presentation/register/bloc/register_bloc.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';
import 'package:flutter_chat_app/style/app_gap.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RegisterPage extends HookWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final usernameController = useTextEditingController();
    return SafeArea(
      child: BlocProvider(
        create: (context) => getIt<RegisterBloc>(),
        child: Scaffold(
          body: BlocConsumer<RegisterBloc, RegisterState>(
            listener: (context, state) => _handleListener(
              context,
              state,
              emailController,
              passwordController,
              usernameController,
            ),
            builder: (context, state) {
              return Padding(
                padding: AppDimens.wrapPadding,
                child: state.status.maybeWhen(
                  submitting: () => const ChickenProgressIndicator(),
                  orElse: () => _RegisterForm(
                    emailController: emailController,
                    passwordController: passwordController,
                    usernameController: usernameController,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _handleListener(
    BuildContext context,
    RegisterState state,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController usernameController,
  ) {
    //! BUG
    /// The  code below causes a bug on WEB.
    /// If WEB support is not needed, the code can be left.
    emailController.text = state.email;
    passwordController.text = state.password;
    usernameController.text = state.username;

    if (state.status.isFailure) {
      context.showErrorSnackBar(
        'Something went wrong. Please try again.', // TODO(Kura): Localize. out-of-scope
      );
      context.read<RegisterBloc>().add(const RegisterEvent.snackbarShown());
    }
    if (state.status.isSuccess) {
      context.showInfoSnackBar('Registered successfully');
      context.read<RegisterBloc>().add(const RegisterEvent.snackbarShown());
    }
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
    return OnboardingWrapper(
      title: 'Register',
      subtitle: "Welcome, let's get started",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ChickenFormField(
            labelText: 'Username',
            // TODO(Kura): Localize. out-of-scope
            controller: usernameController,
            onChanged: (value) => _onUsernameChanged(context, value),
          ),
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
          _RegisterButton(
            onPressed: () => _onSubmitted(context),
          ),
          Gap.listSmall,
          const _LogInButton(),
        ],
      ),
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
      child: const Text('Register'), // TODO(Kura): Localize. out-of-scope
    );
  }
}

class _LogInButton extends StatelessWidget {
  const _LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: context.navigator.pop,
      child: const Text(
        'Already have an account? Log In',
      ),
    );
  }
}
