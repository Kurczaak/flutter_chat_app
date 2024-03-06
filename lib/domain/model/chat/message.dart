import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message {
  const factory Message({
    required String id,
    required String message,
    required ChatUser sender,
    required Chatroom chatroom,
    required DateTime createdAt,
  }) = _Message;
}
