import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:chicken_chat/model/request/get_chatrooms_pagination.dart';
import 'package:chicken_chat/model/response/get_chatrooms_response.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/param/chat/create_chatroom_param.dart';
import 'package:flutter_chat_app/domain/model/param/chat/pagination_model.dart';

extension CreateChatroomParamExt on CreateChatroomParam {
  CreateChatroomRequest toChickenModel() {
    return CreateChatroomRequest(
      name: name,
      description: description,
      users: users.map((e) => e.toChickenModel()).toList(),
    );
  }
}

extension ChatUserExt on ChatUser {
  ChatroomUser toChickenModel() {
    return ChatroomUser(
      id: int.parse(id),
      username: username,
      email: email,
    );
  }
}

extension ChatroomUserExt on ChatroomUser {
  ChatUser toDomainModel() {
    return ChatUser(
      id: id.toString(),
      username: username,
      email: email,
    );
  }
}

extension GetChatroomsResponseExt on GetChatroomsResponse {
  List<Chatroom> toDomainModel() =>
      items.map((e) => e.toDomainModel()).toList();
}

extension ChickenChatroomExt on ChickenChatroom {
  Chatroom toDomainModel() => Chatroom(
        id: id.toString(),
        title: name,
        description: description,
        members: users.map((e) => e.toDomainModel()).toList(),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

extension ChatroomExt on Chatroom {
  ChickenChatroom toChickenModel() => ChickenChatroom(
        id: int.parse(id),
        name: title,
        description: description,
        users: members.toChickenModel(),
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}

extension PaginationModelExt on PaginationModel {
  GetChatroomsPagination toChickenModel() => GetChatroomsPagination(
        page: page,
        limit: pageSize,
      );
}

extension ChatUserListExt on List<ChatUser> {
  List<ChatroomUser> toChickenModel() =>
      map((e) => e.toChickenModel()).toList();
}
