import 'package:bloc/bloc.dart';
import 'package:flutter_chat_app/domain/model/chat/chat_user.dart';
import 'package:flutter_chat_app/domain/model/param/chat/create_chatroom_param.dart';
import 'package:flutter_chat_app/domain/use_case/chat/create_chatroom_use_case.dart';
import 'package:flutter_chat_app/domain/use_case/chat/search_user_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_chatroom_bloc.freezed.dart';
part 'create_chatroom_event.dart';
part 'create_chatroom_state.dart';

@Injectable()
class CreateChatroomBloc
    extends Bloc<CreateChatroomEvent, CreateChatroomState> {
  CreateChatroomBloc(this._searchUserUseCase, this._createChatroomUseCase)
      : super(const _Initial()) {
    on<CreateChatroomEvent>((event, emit) async {
      await event.map(
        titleChanged: (event) async => _onTitleChanged(event, emit),
        descriptionChanged: (event) async => _onDescriptionChanged(event, emit),
        addUser: (event) async => _onAddUser(event, emit),
        removeUser: (event) async => _onRemoveUser(event, emit),
        createChatroom: (event) async => _onCreateChatroom(event, emit),
      );
    });
  }

  final SearchUserUseCase _searchUserUseCase;
  final CreateChatroomUseCase _createChatroomUseCase;

  void _onTitleChanged(
    _TitleChanged event,
    Emitter<CreateChatroomState> emit,
  ) {
    final currentState = state._initialOrNull;
    if (currentState == null) return;

    emit(currentState.copyWith(chatroomTitle: event.title));
  }

  void _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<CreateChatroomState> emit,
  ) {
    final currentState = state._initialOrNull;
    if (currentState == null) return;

    emit(currentState.copyWith(chatroomDescription: event.description));
  }

  void _onAddUser(
    _AddUser event,
    Emitter<CreateChatroomState> emit,
  ) {
    final currentState = state._initialOrNull;
    if (currentState == null) return;

    final addedUsers = [...currentState.addedUsers, event.user];

    emit(currentState.copyWith(addedUsers: addedUsers));
  }

  void _onRemoveUser(_RemoveUser event, Emitter<CreateChatroomState> emit) {
    final currentState = state._initialOrNull;
    if (currentState == null) return;

    final addedUsers =
        currentState.addedUsers.where((user) => user != event.user).toList();

    emit(currentState.copyWith(addedUsers: addedUsers));
  }

  Future<void> _onCreateChatroom(
    CreateChatroomEvent event,
    Emitter<CreateChatroomState> emit,
  ) async {
    final initial = state._initialOrNull;
    if (initial == null ||
        initial.chatroomTitle.isEmpty ||
        initial.chatroomDescription.isEmpty) return;

    final result = await _createChatroomUseCase.call(
      CreateChatroomParam(
        name: initial.chatroomTitle,
        description: initial.chatroomDescription,
        users: initial.addedUsers,
      ),
    );
    // TODO (Handle chatroom creation)
  }
}
