import 'package:base/domain/usecases/base_use_case.dart';
import 'package:chicken_chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/failure/chatroom_failure.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DisconnectFromChatServiceUseCase
    extends UseCaseNoParam<ChatroomFailure, Unit> {
  DisconnectFromChatServiceUseCase(this._chickenChat);

  final ChickenChat _chickenChat;

  @override
  Future<Either<ChatroomFailure, Unit>> execute(void param) async {
    try {
      _chickenChat.disconnect();
      return right(unit);
    } catch (e) {
      return left(const ChatroomFailure.unexpected());
    }
  }
}
