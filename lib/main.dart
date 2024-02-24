import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.config.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter_chat_app/presentation/chat/chat_page.dart';
import 'package:flutter_chat_app/presentation/login/login_page.dart';

void main() {
  getIt.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.when(
                  authenticated: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const ChatPage())),
                  unauthenticated: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const LoginPage())));
            },
            child: const SizedBox(),
          ),
        ),
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const LoginPage(),
        '/chat': (context) => const ChatPage()
      },
    );
  }
}
