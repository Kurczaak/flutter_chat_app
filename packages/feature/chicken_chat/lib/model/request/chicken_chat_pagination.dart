import 'package:json_annotation/json_annotation.dart';

part 'chicken_chat_pagination.g.dart';

@JsonSerializable()
class ChickenChatPagination {
  final int page;
  final int limit;

  ChickenChatPagination({required this.page, required this.limit});

  Map<String, dynamic> toJson() => _$ChickenChatPaginationToJson(this);
}
