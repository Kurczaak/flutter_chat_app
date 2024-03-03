import 'dart:async';

import 'package:chicken_chat/chat.dart';
import 'package:chicken_chat/model/chatroom_user.dart';
import 'package:chicken_chat/model/request/create_chatroom_request.dart';
import 'package:chicken_chat/model/request/get_chatrooms_pagination.dart';
import 'package:chicken_chat/model/response/get_chatrooms_response.dart';
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
  Stream<String> onMessage() {
    final streamController = StreamController<String>();
    socket?.on(
        'message', (data) => streamController.add(data.toString())); // TODO fix
    return streamController.stream;
  }

  @override
  Stream<GetChatroomsResponse> getMyRooms(
      GetChatroomsPagination request) async* {
    final streamController = StreamController<GetChatroomsResponse>();
    socket?.emitWithAck('paginateRooms', request.toJson(), ack: print);
    socket?.on('rooms', (data) {
      streamController.add(GetChatroomsResponse.fromJson(data));
    });
    yield* streamController.stream;
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
}
