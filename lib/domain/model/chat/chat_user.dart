import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user.freezed.dart';

@freezed
abstract class ChatUser with _$ChatUser {
  const factory ChatUser({
    required String id,
    required String username,
    required String email,
  }) = _ChatUser;
}
