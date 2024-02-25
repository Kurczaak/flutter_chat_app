part of 'chatroom_list_bloc.dart';

@freezed
class ChatroomListState with _$ChatroomListState {
  const factory ChatroomListState.initial() = _Initial;
  const factory ChatroomListState.loading() = _Loading;
  const factory ChatroomListState.loaded(List<ChatroomPreview> chatrooms) =
      _Loaded;
}
