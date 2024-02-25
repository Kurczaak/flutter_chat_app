import 'dart:async';

import 'package:chicken_chat/chat.dart';
import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:token_service/token_service.dart';

@Singleton(as: ChickenChat)
class SocketIoChatImpl implements ChickenChat {
  final TokenService tokenService;
  Socket? socket;

  SocketIoChatImpl({required this.tokenService});

  @override
  Future<bool> initialize(String url) async {
    try {
      final token = await tokenService.accessToken;

      socket = io(
          url,
          OptionBuilder()
              .setTransports(['websocket'])
              .disableAutoConnect()
              .setExtraHeaders({
                'Authorization': '$token',
              })
              .build());
      socket?.connect();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Stream<String> onMessage() {
    final streamController = StreamController<String>();
    socket?.on(
        'message', (data) => streamController.add(data.toString())); // TODO fix
    return streamController.stream;
  }

  @override
  Stream<Chatroom> getMyRooms() {
    final streamController = StreamController<Chatroom>();

    socket?.on(
        'rooms', (data) => streamController.add(Chatroom.fromJson(data)));
    return streamController.stream;
  }

  @override
  void sendMessage(String message) => socket?.emit('message', message);

  @override
  Future<void> createRoom(CreateChatroomRequest request) async {
    final completer = Completer<void>();

    socket?.emitWithAck(
      'createRoom',
      request.toJson(),
      ack: (_) {
        completer.complete();
      },
    );
    return completer.future;
  }
}
