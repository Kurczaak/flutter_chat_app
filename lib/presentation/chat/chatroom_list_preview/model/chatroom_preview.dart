import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_preview.freezed.dart';

/// A preview of a chatroom used to display a list of chatrooms.
@freezed
abstract class ChatroomPreview with _$ChatroomPreview {
  /// Default constructor
  const factory ChatroomPreview({
    required String id,
    required String title,
    required String description,
  }) = _ChatroomPreview;
}
