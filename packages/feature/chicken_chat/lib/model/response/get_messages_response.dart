import 'package:chicken_chat/model/message.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_messages_response.g.dart';

@JsonSerializable()
class GetMessagesResponse {
  final List<ChickenReceivedMessage> items;

  GetMessagesResponse({required this.items});

  factory GetMessagesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMessagesResponseFromJson(json);
}
