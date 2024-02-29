import 'package:chicken_chat/model/chatroom.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_chatrooms_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetChatroomsResponse {
  final List<Chatroom> chatrooms;

  GetChatroomsResponse({required this.chatrooms});

  factory GetChatroomsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetChatroomsResponseFromJson(json);
}
