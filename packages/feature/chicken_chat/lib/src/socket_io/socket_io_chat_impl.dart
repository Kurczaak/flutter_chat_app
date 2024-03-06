import 'dart:async';

import 'package:chicken_chat/chat.dart';
import 'package:chicken_chat/model/chatroom.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/message.dart';
import 'package:chicken_chat/model/request/chicken_chat_pagination.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:chicken_chat/model/response/get_chatrooms_response.dart';
import 'package:chicken_chat/model/response/get_messages_response.dart';
import 'package:chicken_http/chicken_http.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:token_service/token_service.dart';

@Singleton(as: ChickenChat)
class SocketIoChatImpl implements ChickenChat {
  SocketIoChatImpl(this._httpClient, {required this.tokenService});

  final TokenService tokenService;
  final ChickenHttpClient _httpClient;
  Socket? socket;
  late String chatUrl;

  @override
  Future<bool> initialize(String url) async {
    chatUrl = url;
    try {
      final token = await tokenService.accessToken;
      final options = OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setExtraHeaders({
            'Authorization': '$token',
          })
          .build();
      socket = io(url, options);
      socket?.connect();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Stream<GetChatroomsResponse> getMyRooms(
      ChickenChatPagination request) async* {
    final streamController = StreamController<GetChatroomsResponse>();
    socket?.emitWithAck('paginateRooms', request.toJson(), ack: print);
    socket?.on('rooms', (data) {
      streamController.add(GetChatroomsResponse.fromJson(data));
    });
    yield* streamController.stream;
  }

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

  @override
  Future<List<ChatroomUser>> searchUsers(String query) async {
    final token = await tokenService.accessToken;
    final result = await _httpClient
        .get('$chatUrl/api/users/find-by-username?username=$query', headers: {
      'Authorization': 'Bearer: $token',
    });
    return (result.data as List<dynamic>)
        .map((e) => ChatroomUser.fromJson(e))
        .toList();
  }

  @override
  void disconnect() => socket?.disconnect();

  @override
  Future<bool> joinRoom(ChickenChatroom room) {
    final completer = Completer<bool>();

    socket?.emitWithAck(
      'joinRoom',
      room.toJson(),
      ack: (data) {
        // TODO remove this
        print('joined room data : $data');
        completer.complete(true);
      },
    );
    return completer.future
      ..timeout(const Duration(seconds: 10), onTimeout: () => false);
  }

  @override
  Future<bool> leaveRoom(ChickenChatroom room) {
    // TODO extract common method logic
    final completer = Completer<bool>();

    socket?.emitWithAck(
      'leaveRoom',
      room.toJson(),
      ack: (data) {
        // TODO remove this
        print('leave room data : $data');
        completer.complete(true);
      },
    );
    return completer.future
      ..timeout(const Duration(seconds: 10), onTimeout: () => false);
  }

  @override
  Future<ChickenReceivedMessage> sendMessage(ChickenSentMessage message) {
    final completer = Completer<ChickenReceivedMessage>();

    socket?.emitWithAck(
      'leaveRoom',
      message.toJson(),
      ack: (data) {
        // TODO remove this
        print('leave room data : $data');
        completer.complete(ChickenReceivedMessage.fromJson(data));
      },
    );
    return completer.future
      ..timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException('A timeout occurred while sending message.');
      });
  }

  @override
  Stream<GetMessagesResponse> onMessage(ChickenChatPagination request) {
    final streamController = StreamController<GetMessagesResponse>();
    socket?.on(
        'message',
        (data) => streamController
            .add(GetMessagesResponse.fromJson(data))); //TODO map from list
    return streamController.stream;
  }
}
