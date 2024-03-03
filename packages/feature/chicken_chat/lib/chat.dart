import 'dart:async';

import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:chicken_chat/model/request/get_chatrooms_pagination.dart';
import 'package:chicken_chat/model/response/get_chatrooms_response.dart';

abstract class ChickenChat {
  Future<bool> initialize(String url);

  Stream<String> onMessage();

  Stream<GetChatroomsResponse> getMyRooms(GetChatroomsPagination request);

  Future<void> createRoom(CreateChatroomRequest request);

  void sendMessage(String message);

  Future<List<ChatroomUser>> searchUsers(String query);

  void disconnect();
}
