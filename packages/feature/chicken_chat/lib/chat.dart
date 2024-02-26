import 'dart:async';

import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';

abstract class ChickenChat {
  Future<bool> initialize(String url);

  Stream<String> onMessage();

  Stream<Chatroom> getMyRooms();

  Future<void> createRoom(CreateChatroomRequest request);

  void sendMessage(String message);

  Future<List<ChatroomUser>> searchUsers(String query);
}
