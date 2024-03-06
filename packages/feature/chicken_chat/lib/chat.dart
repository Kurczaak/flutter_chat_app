import 'dart:async';

import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/message.dart';
import 'package:chicken_chat/model/request/chicken_chat_pagination.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:chicken_chat/model/response/get_chatrooms_response.dart';
import 'package:chicken_chat/model/response/get_messages_response.dart';

abstract class ChickenChat {
  Future<bool> initialize(String url);

  Stream<GetMessagesResponse> onMessage(ChickenChatPagination request);

  Future<ChickenReceivedMessage> sendMessage(ChickenSentMessage message);

  Stream<GetChatroomsResponse> getMyRooms(ChickenChatPagination request);

  Future<void> createRoom(CreateChatroomRequest request);

  Future<List<ChatroomUser>> searchUsers(String query);

  Future<bool> joinRoom(ChickenChatroom room);

  Future<bool> leaveRoom(ChickenChatroom room);

  void disconnect();
}
