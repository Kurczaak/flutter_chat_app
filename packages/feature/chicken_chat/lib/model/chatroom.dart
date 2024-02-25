import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chatroom.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Chatroom {
  final int id;
  final String title;
  final String description;
  final List<ChatroomUser> users;
  final DateTime createdAt;
  final DateTime updatedAt;

  Chatroom({
    required this.id,
    required this.title,
    required this.description,
    required this.users,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Chatroom.fromJson(Map<String, dynamic> json) =>
      _$ChatroomFromJson(json);
}
