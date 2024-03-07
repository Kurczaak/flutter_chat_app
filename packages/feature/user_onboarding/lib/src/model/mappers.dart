import 'package:user_onboarding/model/chicken_user.dart';
import 'package:user_onboarding/src/model/user_dto.dart';

extension UserDToExt on UserDTO {
  ChickenUser toChickenModel() =>
      ChickenUser(id: id.toString(), username: username, email: email);
}
