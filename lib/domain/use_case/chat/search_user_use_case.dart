import 'package:base/domain/usecases/base_use_case.dart';
import 'package:chicken_chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/failure/chatroom_failure.dart';
import 'package:flutter_chat_app/domain/model/param/mapper/chat_mappers.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class SearchUserUseCase
    extends UseCase<ChatroomFailure, List<ChatUser>, String> {
  SearchUserUseCase(this._chickenChat);

  final ChickenChat _chickenChat;

  @override
  Future<Either<ChatroomFailure, List<ChatUser>>> execute(String param) async {
    try {
      final users = await _chickenChat.searchUsers(param);
      return right(users.map((e) => e.toDomainModel()).toList());
    } catch (e) {
      return left(const ChatroomFailure.unexpected());
    }
  }
}
