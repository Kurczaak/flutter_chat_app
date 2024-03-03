import 'package:flutter/material.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/miscellaneous/context_extension.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom/chat_page.dart';

class ChatroomList extends StatelessWidget {
  const ChatroomList({required this.chatrooms, super.key});

  final List<Chatroom> chatrooms;

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
  final Chatroom chatroom;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.chat),
      trailing: const Icon(Icons.arrow_forward_ios),
      title: Text(chatroom.title),
      subtitle: Text(chatroom.description),
      onTap: () {
        context.navigator.push(
          MaterialPageRoute<void>(
            builder: (context) => ChatPage(chatroom: chatroom),
          ),
        );
      },
    );
  }
}
