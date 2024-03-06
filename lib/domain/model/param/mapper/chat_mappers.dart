import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/message.dart';
import 'package:chicken_chat/model/request/chicken_chat_pagination.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:chicken_chat/model/response/get_chatrooms_response.dart';
import 'package:chicken_chat/model/response/get_messages_response.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/chat/message.dart';
import 'package:flutter_chat_app/domain/model/param/chat/create_chatroom_param.dart';
import 'package:flutter_chat_app/domain/model/param/chat/pagination_model.dart';
import 'package:flutter_chat_app/domain/model/param/chat/send_message_param.dart';

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
  ChickenChatPagination toChickenModel() => ChickenChatPagination(
        page: page,
        limit: pageSize,
      );
}

extension ChatUserListExt on List<ChatUser> {
  List<ChatroomUser> toChickenModel() =>
      map((e) => e.toChickenModel()).toList();
}

extension SendMessageParamExt on SendMessageParam {
  ChickenSentMessage toChickenModel() => ChickenSentMessage(
        text: message,
        room: chatroom.toChickenModel(),
      );
}

extension ChickenReceivedMessageExt on ChickenReceivedMessage {
  Message toDomainModel() => Message(
        id: id.toString(),
        message: text,
        sender: user.toDomainModel(),
        chatroom: room.toDomainModel(),
        createdAt: createdAt,
      );
}

extension ChickenReceivedMessageListExt on List<ChickenReceivedMessage> {
  List<Message> toDomainModel() => map((e) => e.toDomainModel()).toList();
}

extension GetMessagesResponseExt on GetMessagesResponse {
  List<Message> toDomainModel() => items.toDomainModel();
}
