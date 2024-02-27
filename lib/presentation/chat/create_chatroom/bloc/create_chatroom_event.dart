part of 'create_chatroom_bloc.dart';

@freezed
class CreateChatroomEvent with _$CreateChatroomEvent {
  const factory CreateChatroomEvent.titleChanged(String title) = _TitleChanged;
  const factory CreateChatroomEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory CreateChatroomEvent.addUser(ChatUser user) = _AddUser;
  const factory CreateChatroomEvent.removeUser(ChatUser user) = _RemoveUser;
  const factory CreateChatroomEvent.createChatroom() = _CreateChatroom;
}
