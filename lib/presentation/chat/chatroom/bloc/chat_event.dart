part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.initialize() = _Initialize;
  const factory ChatEvent.sendMessage(String message) = _SendMessage;
}
