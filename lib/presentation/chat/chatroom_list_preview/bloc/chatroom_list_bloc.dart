import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/presentation/chat/chatroom_list_preview/model/chatroom_preview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chatroom_list_bloc.freezed.dart';
part 'chatroom_list_event.dart';
part 'chatroom_list_state.dart';

@injectable
class ChatroomListBloc extends Bloc<ChatroomListEvent, ChatroomListState> {
  ChatroomListBloc() : super(const _Initial()) {
    on<ChatroomListEvent>((event, emit) async {
      await event.map(init: (_) async => _onInit(emit));
    });
  }

  Future<void> _onInit(Emitter<ChatroomListState> emit) async {
    emit(
      const _Loaded([
        ChatroomPreview(
          id: '1',
          title: 'Chatroom 1',
          description: 'Description 1',
        ),
        ChatroomPreview(
          id: '2',
          title: 'Chatroom 2',
          description: 'Description 2',
        ),
      ]),
    );
  }
}
