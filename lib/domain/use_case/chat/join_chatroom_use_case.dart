import 'package:base/domain/usecases/base_use_case.dart';
import 'package:chicken_chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/failure/chatroom_failure.dart';
import 'package:flutter_chat_app/domain/model/param/mapper/chat_mappers.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class JoinChatroomUseCase extends UseCase<ChatroomFailure, Unit, Chatroom> {
  JoinChatroomUseCase(this._chickenChat);

  final ChickenChat _chickenChat;

  @override
  Future<Either<ChatroomFailure, Unit>> execute(Chatroom param) async {
    try {
      await _chickenChat.joinRoom(param.toChickenModel());
      return right(unit);
    } catch (e) {
      return left(const ChatroomFailure.unexpected());
    }
  }
}
