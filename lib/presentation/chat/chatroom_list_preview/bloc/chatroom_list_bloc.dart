import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/model/chat/chatroom.dart';
import 'package:flutter_chat_app/domain/model/param/chat/pagination_model.dart';
import 'package:flutter_chat_app/domain/use_case/chat/get_my_rooms_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chatroom_list_bloc.freezed.dart';
part 'chatroom_list_event.dart';
part 'chatroom_list_state.dart';

@injectable
class ChatroomListBloc extends Bloc<ChatroomListEvent, ChatroomListState> {
  ChatroomListBloc(this._getMyRoomsUseCase) : super(const _Initial()) {
    on<ChatroomListEvent>((event, emit) async {
      await event.map(
        init: (_) async => _onInit(emit),
        addChatrooms: (chatrooms) async =>
            _onAddChatrooms(emit, chatrooms.chatrooms),
      );
    });
  }

  final GetMyRoomsUseCase _getMyRoomsUseCase;
  StreamSubscription<List<Chatroom>>? _myStreamSubscription;

  Future<void> _onInit(Emitter<ChatroomListState> emit) async {
    emit(const _Loading());
    await _myStreamSubscription?.cancel();
    final result = await _getMyRoomsUseCase.execute(
      // TODO(Kura): add pagination
      const PaginationModel(page: 1, pageSize: 10),
    );
    result.fold((l) => emit(const _Error()), (r) {
      emit(const _Loaded([]));
      _myStreamSubscription = r.listen((event) {
        add(ChatroomListEvent.addChatrooms(event));
      });
    });
  }

  void _onAddChatrooms(
    Emitter<ChatroomListState> emit,
    List<Chatroom> chatrooms,
  ) {
    emit(_Loaded(chatrooms));
  }
}
