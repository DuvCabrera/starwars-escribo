import '../domain.dart';

abstract class IReadAvatar {
  Future<AvatarEntity?> get();
}
