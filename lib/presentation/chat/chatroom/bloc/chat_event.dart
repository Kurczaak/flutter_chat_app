part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initialize(Chatroom chatroom) = _Initialize;
  const factory ChatEvent.sendMessage(String message) = _SendMessage;
  const factory ChatEvent.messagesReceived(List<Message> messages) =
      _MessagesReceived;
}
