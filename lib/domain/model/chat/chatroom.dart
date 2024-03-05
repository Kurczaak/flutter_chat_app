import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom.freezed.dart';

@freezed
abstract class Chatroom with _$Chatroom {
  const factory Chatroom({
    required String id,
    required String title,
    required String description,
    required List<ChatUser> members,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Chatroom;
}
