part of 'chatroom_list_bloc.dart';

@freezed
class ChatroomListEvent with _$ChatroomListEvent {
  const factory ChatroomListEvent.init() = _Init;
  const factory ChatroomListEvent.addChatrooms(List<Chatroom> chatrooms) =
      _AddChatrooms;
}
