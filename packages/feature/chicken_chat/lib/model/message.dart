import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChickenSentMessage {
  ChickenSentMessage({
    required this.text,
    required this.room,
  });

  final String text;
  final ChickenChatroom room;

  Map<String, dynamic> toJson() => _$ChickenSentMessageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ChickenReceivedMessage extends ChickenSentMessage {
  ChickenReceivedMessage({
    required this.id,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
    required super.text,
    required super.room,
  });

  final int id;
  final ChatroomUser user;
  final DateTime createdAt;
  final DateTime updatedAt;
  factory ChickenReceivedMessage.fromJson(Map<String, dynamic> json) =>
      _$ChickenReceivedMessageFromJson(json);
}
