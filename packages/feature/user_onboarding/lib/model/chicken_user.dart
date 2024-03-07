import 'package:freezed_annotation/freezed_annotation.dart';

part 'chicken_user.freezed.dart';

@freezed
abstract class ChickenUser with _$ChickenUser {
  const factory ChickenUser({
    required String id,
    required String username,
    required String email,
  }) = _ChickenUser;
}
