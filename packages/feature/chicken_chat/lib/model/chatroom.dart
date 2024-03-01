import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chatroom.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChickenChatroom {
  final int id;
  final String name;
  final String description;
  final List<ChatroomUser> users;
  final DateTime createdAt;
  final DateTime updatedAt;

  ChickenChatroom({
    required this.id,
    required this.name,
    required this.description,
    required this.users,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ChickenChatroom.fromJson(Map<String, dynamic> json) =>
      _$ChickenChatroomFromJson(json);
}
