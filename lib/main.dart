import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.config.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter_chat_app/presentation/chat/chat_page.dart';
import 'package:flutter_chat_app/presentation/login/login_page.dart';
import 'package:flutter_chat_app/presentation/register/register_page.dart';
import 'package:flutter_chat_app/style/app_colors.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';

void main() {
  getIt.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.when(
                authenticated: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const ChatPage(),
                  ),
                ),
                unauthenticated: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                ),
              );
            },
            child: const SizedBox(),
          ),
        ),
      ),
      theme: ThemeData(
        // TODO(Kura): Extract
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: AppColors.secondaryColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius:
                BorderRadius.all(Radius.circular(AppDimens.borderRadius)),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: context.theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.onPrimary,
            padding: AppDimens.buttonPadding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimens.borderRadius),
            ),
          ),
        ),
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/chat': (context) => const ChatPage(),
      },
    );
  }
}
