import 'package:json_annotation/json_annotation.dart';

part 'chatroom_user.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class ChatroomUser {
  final int id;
  final String username;
  final String email;

  ChatroomUser({
    required this.id,
    required this.username,
    required this.email,
  });

  factory ChatroomUser.fromJson(Map<String, dynamic> json) =>
      _$ChatroomUserFromJson(json);

  Map<String, dynamic> toJson() => _$ChatroomUserToJson(this);
}
