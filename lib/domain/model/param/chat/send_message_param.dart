import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';

class SendMessageParam {
  SendMessageParam({required this.message, required this.chatroom});

  final String message;
  final Chatroom chatroom;
}
