import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/param/chat/create_chatroom_param.dart';

extension CreateChatroomParamExt on CreateChatroomParam {
  CreateChatroomRequest toChickenModel() {
    return CreateChatroomRequest(
      title: name,
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
