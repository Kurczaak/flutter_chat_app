import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom/bloc/chat_bloc.dart';
import 'package:flutter_chat_app/style/app_colors.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';
import 'package:flutter_chat_app/style/app_gap.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({required this.chatroom, super.key});
  final Chatroom chatroom;

  @override
  Widget build(BuildContext context) {
    // TODO(Kura): Implement chat page.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(chatroom.title),
          leading: const BackButton(),
        ),
        body: BlocProvider(
          create: (context) => getIt<ChatBloc>(),
          child: Padding(
            padding: AppDimens.wrapPadding,
            child: Column(
              children: [
                Text(chatroom.description),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: chatroom.members.length,
                  itemBuilder: (context, index) {
                    final user = chatroom.members[index];
                    return _UserPreviewWidget(user: user);
                  },
                ),
                Gap.listMedium,
                const _ChatroomBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ChatroomBody extends StatelessWidget {
  const _ChatroomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _UserPreviewWidget extends StatelessWidget {
  const _UserPreviewWidget({required this.user, super.key});

  final ChatUser user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            child: Text(user.id),
          ),
        ),
        Gap.g8,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(user.username),
            Text(user.email),
          ],
        ),
      ],
    );
  }
}
