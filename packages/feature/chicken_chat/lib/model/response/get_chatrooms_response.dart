import 'package:chicken_chat/model/chatroom.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_chatrooms_response.g.dart';

@JsonSerializable()
class GetChatroomsResponse {
  final List<ChickenChatroom> items;

  GetChatroomsResponse({required this.items});

  factory GetChatroomsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetChatroomsResponseFromJson(json);
}
