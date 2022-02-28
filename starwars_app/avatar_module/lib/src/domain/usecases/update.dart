import '../domain.dart';

abstract class IUpdateAvatar {
  Future<void> update({
    required AvatarEntity entity,
  });
}
