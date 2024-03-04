import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChickenSentMessage {
  ChickenSentMessage({
    required this.text,
    required this.user,
    required this.room,
    required this.createdAt,
    required this.updatedAt,
  });

  final String text;
  final ChatroomUser user;
  final ChickenChatroom room;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$ChickenSentMessageToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ChickenReceivedMessage extends ChickenSentMessage {
  ChickenReceivedMessage({
    required super.text,
    required super.user,
    required super.room,
    required super.createdAt,
    required super.updatedAt,
  });

  factory ChickenReceivedMessage.fromJson(Map<String, dynamic> json) =>
      _$ChickenReceivedMessageFromJson(json);
}
