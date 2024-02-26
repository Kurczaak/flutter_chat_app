part of 'create_chatroom_bloc.dart';

@freezed
class CreateChatroomState with _$CreateChatroomState {
  const factory CreateChatroomState.initial({
    @Default('') String chatroomTitle,
    @Default('') String chatroomDescription,
    @Default([]) List<ChatUser> addedUsers,
  }) = _Initial;
  const factory CreateChatroomState.loading() = _Loading;
  const factory CreateChatroomState.success() = _Success;
  const factory CreateChatroomState.error() = _Error;
}

extension CreateChatroomStateExt on CreateChatroomState {
  /// Returns the initial state if the current state is [CreateChatroomState.initial].
  _Initial? get _initialOrNull => maybeWhen(
        initial: (chatroomTitle, chatroomDescription, addedUsers) =>
            CreateChatroomState.initial(
          chatroomTitle: chatroomTitle,
          chatroomDescription: chatroomDescription,
          addedUsers: addedUsers,
        ) as _Initial,
        orElse: () => null,
      );
}
