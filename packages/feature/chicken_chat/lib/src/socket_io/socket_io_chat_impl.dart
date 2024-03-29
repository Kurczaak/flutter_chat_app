import 'dart:async';
import 'dart:developer' as developer;

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
      developer.log(token ?? '');
      developer.log(socket?.opts.toString() ?? '');
      socket
        ?..destroy()
        ..disconnect()
        ..clearListeners()
        ..dispose();
      socket = null;
      final options = OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build();
      socket = io(url, options);
      socket!.io.options?['extraHeaders'] = {
        'Authorization': '$token',
      };
      socket?.connect();
      developer.log(socket?.opts.toString() ?? '');
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
    // TODO(Kura): refactor
    return Future.value(true);
    // ..timeout(const Duration(seconds: 10), onTimeout: () => false);
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
      'addMessage',
      message.toJson(),
      ack: (data) {
        // TODO remove this
        print('leave room data : $data');
        completer.complete(ChickenReceivedMessage.fromJson(data));
      },
    );
    return completer.future;
  }

  @override
  Stream<GetMessagesResponse> onMessage(ChickenChatPagination request) {
    final streamController = StreamController<GetMessagesResponse>();
    socket?.on(
        'messages',
        (data) => streamController
            .add(GetMessagesResponse.fromJson(data))); //TODO map from list
    return streamController.stream;
  }
}
