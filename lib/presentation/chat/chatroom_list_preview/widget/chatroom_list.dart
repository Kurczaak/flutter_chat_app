import 'package:flutter/material.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/model/chatroom_preview.dart';

class ChatroomList extends StatelessWidget {
  const ChatroomList({required this.chatrooms, super.key});

  final List<ChatroomPreview> chatrooms;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatrooms.length,
      itemBuilder: (context, index) => _ChatroomTile(
        chatroom: chatrooms[index],
      ),
    );
  }
}

class _ChatroomTile extends StatelessWidget {
  const _ChatroomTile({required this.chatroom, super.key});
  final ChatroomPreview chatroom;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.chat),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(chatroom.title),
      subtitle: Text(chatroom.description),
      onTap: () {
        // TODO(Kura): implement navigation to chat page.
        context.showUnimplementedSnackBar();
      },
    );
  }
}
