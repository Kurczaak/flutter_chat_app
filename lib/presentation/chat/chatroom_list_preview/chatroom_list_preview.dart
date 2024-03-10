import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/use_case/log_out_use_case.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/bloc/chatroom_list_bloc.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/widget/chatroom_list.dart';
import 'package:flutter_chat_app/presentation/chat/create_chatroom/create_chatroom_page.dart';
import 'package:flutter_chat_app/presentation/user_bloc/user_bloc.dart';
import 'package:flutter_chat_app/style/app_gap.dart';

class ChatroomListPreviewPage extends StatelessWidget {
  const ChatroomListPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatroomListBloc>(
      create: (_) =>
          getIt<ChatroomListBloc>()..add(const ChatroomListEvent.init()),
      child: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: _AvatarWidget(
              displayedText: state.user?.username[0] ?? '',
            ),
            title: Text(
              state.user?.username ?? '',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            actions: const [
              _LogoutButton(),
            ],
          ),
          body: BlocBuilder<ChatroomListBloc, ChatroomListState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<ChatroomListBloc>()
                      .add(const ChatroomListEvent.init());
                },
                child: state.map(
                  initial: (_) => Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO(Kura): Move to BLoC.
                        getIt<LogOutUseCase>().call();
                      },
                      child: const Text('initial'),
                    ),
                  ),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  error: (value) => const Center(
                    child: Text('Error'),
                  ),
                  loaded: (loaded) => _ChatBody(
                    chatrooms: loaded.chatrooms,
                  ),
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              context.navigator
                  .push<bool>(
                MaterialPageRoute(
                  builder: (context) => const CreateChatroomPage(),
                ),
              )
                  .then((value) {
                if (value ?? false) {
                  context.showInfoSnackBar(
                    'Chatroom created successfully!',
                  );
                }
              }); // TODOextract this string
            },
            label: Row(
              children: [
                const Icon(Icons.add),
                Gap.g8,
                const Text('Add chatroom'),
              ],
            ),
          ),
        );
      },
    );
  }
}

// TODO(Kura): Refactor this widget.
class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    required this.displayedText,
    super.key,
  });
  final String displayedText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CircleAvatar(
        child: Text(displayedText),
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        getIt<LogOutUseCase>().call();
      },
      icon: const Icon(Icons.logout),
    );
  }
}

class _ChatBody extends StatelessWidget {
  const _ChatBody({required this.chatrooms, super.key});
  final List<Chatroom> chatrooms;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap.listMedium,
        Expanded(
          child: ChatroomList(
            chatrooms: chatrooms,
          ),
        ),
      ],
    );
  }
}
