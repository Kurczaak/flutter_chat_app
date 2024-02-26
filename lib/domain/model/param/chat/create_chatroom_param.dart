import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';

class CreateChatroomParam {
  CreateChatroomParam({
    required this.name,
    required this.description,
    required this.users,
  });
  final String name;
  final String description;
  final List<ChatUser> users;
}
