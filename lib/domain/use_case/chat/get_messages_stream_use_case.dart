import 'package:base/domain/usecases/base_use_case.dart';
import 'package:chicken_chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/chat/message.dart';
import 'package:flutter_chat_app/domain/model/failure/chatroom_failure.dart';
import 'package:flutter_chat_app/domain/model/param/chat/pagination_model.dart';
import 'package:flutter_chat_app/domain/model/param/mapper/chat_mappers.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetMessagesUseCase
    extends UseCase<ChatroomFailure, Stream<List<Message>>, PaginationModel> {
  GetMessagesUseCase(this._chickenChat);

  final ChickenChat _chickenChat;

  @override
  Future<Either<ChatroomFailure, Stream<List<Message>>>> execute(
    PaginationModel param,
  ) async {
    try {
      final messages = _chickenChat.onMessage(
        param.toChickenModel(),
      );
      return right(messages.map((event) => event.toDomainModel()));
    } catch (e) {
      return left(const ChatroomFailure.unexpected());
    }
  }
}
