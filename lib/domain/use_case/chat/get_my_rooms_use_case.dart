import 'package:base/domain/usecases/base_use_case.dart';
import 'package:chicken_chat/chat.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/failure/chatroom_failure.dart';
import 'package:flutter_chat_app/domain/model/param/chat/pagination_model.dart';
import 'package:flutter_chat_app/domain/model/param/mapper/chat_mappers.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetMyRoomsUseCase
    extends UseCase<ChatroomFailure, Stream<List<Chatroom>>, PaginationModel> {
  GetMyRoomsUseCase(this._chickenChat);

  final ChickenChat _chickenChat;

  @override
  Future<Either<ChatroomFailure, Stream<List<Chatroom>>>> execute(
    PaginationModel param,
  ) async {
    try {
      final rooms = _chickenChat.getMyRooms(
        param.toChickenModel(),
      );
      return right(rooms.map((event) => event.toDomainModel()));
    } catch (e) {
      return left(const ChatroomFailure.unexpected());
    }
  }
}
