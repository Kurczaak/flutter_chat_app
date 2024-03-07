import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/chat/message.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom/bloc/chat_bloc.dart';
import 'package:flutter_chat_app/style/app_colors.dart';
import 'package:flutter_chat_app/style/app_dimens.dart';
import 'package:flutter_chat_app/style/app_gap.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
          create: (context) =>
              getIt<ChatBloc>()..add(ChatEvent.initialize(chatroom)),
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
                const Expanded(child: _ChatroomBody()),
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
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox(),
          loading: (_) => const CircularProgressIndicator(),
          loaded: (loaded) => _LoadedStateWidget(
            messages: loaded.messages,
          ),
        );
      },
    );
  }
}

class _LoadedStateWidget extends StatelessWidget {
  const _LoadedStateWidget({
    required this.messages,
    super.key,
  });

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              final message = messages[index];
              return Padding(
                padding: EdgeInsets.only(
                  bottom: index == messages.length - 1 ? 20 : 0,
                ),
                child: _MessageWidget(
                  message: message,
                  isCurrentUser: false,
                ),
              );
            },
            separatorBuilder: (context, index) => Gap.listSmall,
          ),
        ),
        const _MessageInputBottomWidget(),
      ],
    );
  }
}

class _MessageWidget extends StatelessWidget {
  const _MessageWidget({
    required this.message,
    required this.isCurrentUser,
  });

  final Message message;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Text(message.sender.username),
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.borderRadius),
            color: isCurrentUser
                ? AppColors.primaryColor
                : AppColors.secondaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(message.message),
          ),
        ),
      ],
    );
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

class _MessageInputBottomWidget extends HookWidget {
  const _MessageInputBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Type a message',
              ),
              onChanged: (value) => _handleOnChanged(value, controller),
              onSubmitted: (_) =>
                  _sendMessage(context: context, controller: controller),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () =>
                _sendMessage(context: context, controller: controller),
          ),
        ],
      ),
    );
  }

  void _sendMessage({
    required BuildContext context,
    required TextEditingController controller,
  }) {
    context.read<ChatBloc>().add(ChatEvent.sendMessage(controller.text));
    controller.text = '';
  }

  void _handleOnChanged(String value, TextEditingController controller) {
    controller.text = value;
  }
}
