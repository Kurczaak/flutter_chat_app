import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_failure.freezed.dart';

@freezed
abstract class ChatroomFailure with _$ChatroomFailure {
  const factory ChatroomFailure.unexpected() = _Unexpected;
}
