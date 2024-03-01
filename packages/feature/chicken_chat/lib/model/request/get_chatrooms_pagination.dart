import 'package:json_annotation/json_annotation.dart';

part 'get_chatrooms_pagination.g.dart';

@JsonSerializable()
class GetChatroomsPagination {
  final int page;
  final int limit;

  GetChatroomsPagination({required this.page, required this.limit});

  Map<String, dynamic> toJson() => _$GetChatroomsPaginationToJson(this);
}
