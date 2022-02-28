import '../domain.dart';

abstract class ICreateAvatar {
  Future<void> create({required AvatarEntity entity});
}
