import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_chatroom_request.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class CreateChatroomRequest {
  final String name;
  final String description;
  final List<ChatroomUser> users;

  CreateChatroomRequest({
    required this.name,
    required this.description,
    required this.users,
  });

  Map<String, dynamic> toJson() => _$CreateChatroomRequestToJson(this);
}
