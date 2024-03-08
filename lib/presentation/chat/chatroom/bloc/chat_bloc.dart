import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/chat/message.dart';
import 'package:flutter_chat_app/domain/model/param/chat/pagination_model.dart';
import 'package:flutter_chat_app/domain/model/param/chat/send_message_param.dart';
import 'package:flutter_chat_app/domain/use_case/chat/get_messages_stream_use_case.dart';
import 'package:flutter_chat_app/domain/use_case/chat/join_chatroom_use_case.dart';
import 'package:flutter_chat_app/domain/use_case/chat/leave_chatroom_use_case.dart';
import 'package:flutter_chat_app/domain/use_case/chat/send_message_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@Injectable()
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(
    this._getMessagesUseCase,
    this._sendMessagesUseCase,
    this._joinChatroomUseCase,
    this._leaveChatroomUseCase,
  ) : super(const ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      await event.map(
        initialize: (initialize) async => _onInitialize(
          emit,
          initialize.chatroom,
        ),
        sendMessage: (sendMessage) async =>
            _onSendMessage(emit, sendMessage.message),
        messagesReceived: (messagesReceived) async =>
            _onMessagesReceived(emit, messagesReceived.messages),
      );
    });
  }

  final _messages = <Message>[];

  final GetMessagesUseCase _getMessagesUseCase;
  final JoinChatroomUseCase _joinChatroomUseCase;
  final LeaveChatroomUseCase _leaveChatroomUseCase;
  final SendMessageUseCase _sendMessagesUseCase;

  late Chatroom _chatroom;
  StreamSubscription<List<Message>>? messagesStream;

  Future<void> _onInitialize(Emitter<ChatState> emit, Chatroom chatroom) async {
    emit(const ChatState.loading());
    _chatroom = chatroom;
    await _joinChatroomUseCase.call(chatroom);

    await _initializeMessagesStream();
    emit(const ChatState.loaded([]));
  }

  void _onSendMessage(Emitter<ChatState> emit, String message) {
    _sendMessagesUseCase
        .call(SendMessageParam(message: message, chatroom: _chatroom));
  }

  void _onMessagesReceived(Emitter<ChatState> emit, List<Message> messages) {
    _messages.addAll(messages);
    emit(ChatState.loaded([..._messages]));
  }

  Future<void> _initializeMessagesStream() async {
    final result = await _getMessagesUseCase
        .call(const PaginationModel(page: 1, pageSize: 20));
    result.fold((_) {}, (r) {
      messagesStream?.cancel();
      messagesStream = r.listen((event) {
        add(ChatEvent.messagesReceived(event));
      });
    });
  }

  @override
  Future<void> close() async {
    await messagesStream?.cancel();
    await _leaveChatroomUseCase.call(_chatroom);
    return super.close();
  }
}
