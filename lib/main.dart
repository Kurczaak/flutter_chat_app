import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.config.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/auth_bloc/auth_bloc.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/chatroom_list_preview.dart';
import 'package:flutter_chat_app/presentation/chat/create_chatroom/create_chatroom_page.dart';
import 'package:flutter_chat_app/presentation/login/login_page.dart';
import 'package:flutter_chat_app/presentation/register/register_page.dart';
import 'package:flutter_chat_app/presentation/user_bloc/user_bloc.dart';
import 'package:flutter_chat_app/style/app_colors.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await getIt.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<UserBloc>(
          create: (context) =>
              getIt<UserBloc>()..add(const UserEvent.started()),
        ),
      ],
      child: MaterialApp(
        home: const SafeArea(
          child: _AppBody(),
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
          textTheme:
              context.theme.textTheme.apply(bodyColor: AppColors.textColor),
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
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.onPrimary,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              textStyle: context.theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              foregroundColor: AppColors.textColor,
            ),
          ),
        ),
        routes: {
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/chatroom_list': (context) => const ChatroomListPreviewPage(),
          '/create_chatroom': (context) => const CreateChatroomPage(),
        },
      ),
    );
  }
}

class _AppBody extends StatelessWidget {
  const _AppBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        context.read<UserBloc>().add(const UserEvent.started());
      },
      builder: (context, state) => state.when(
        authenticated: () => const ChatroomListPreviewPage(),
        unauthenticated: () => const LoginPage(),
      ),
    );
  }
}
