import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/di/injection.dart';
import 'package:flutter_chat_app/domain/use_case/log_out_use_case.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/bloc/chatroom_list_bloc.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/model/chatroom_preview.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/widget/chatroom_list.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: const _AvatarWidget(),
        title: const Text(
          'Chatrooms',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          _LogoutButton(),
        ],
      ),
      body: BlocBuilder<ChatroomListBloc, ChatroomListState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO(Kura): Move to BLoC.
                  getIt<LogOutUseCase>().call();
                  // context.read<ChatroomListBloc>().add(const ChatEvent.initialize());
                },
                child: const Text('initial'),
              ),
            ),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (loaded) => _ChatBody(
              chatrooms: loaded.chatrooms,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // TODO(Kura): Navigate to create chatroom page.
          context.showUnimplementedSnackBar();
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
  }
}

// TODO(Kura): Refactor this widget.
class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
        ),
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
  final List<ChatroomPreview> chatrooms;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap.listMedium,
        Expanded(
          child: ChatroomList(
            chatrooms: chatrooms
                .map(
                  (e) => ChatroomPreview(
                    id: e.id,
                    title: e.title,
                    description: e.description,
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
