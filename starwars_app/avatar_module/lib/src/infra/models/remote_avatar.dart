import '../../domain/entities/entities.dart';

class RemoteAvatarModel implements AvatarEntity {
  @override
  final String avatar;

  RemoteAvatarModel({required this.avatar});

  factory RemoteAvatarModel.fromJson(Map<String, dynamic> json) =>
      RemoteAvatarModel(avatar: json['avatar']);

  factory RemoteAvatarModel.fromDomain(AvatarEntity entity) =>
      RemoteAvatarModel(avatar: entity.avatar);

  AvatarEntity toEntity() => AvatarEntity(avatar: avatar);

  Map<String, dynamic> toMap() => {'avatar': avatar};
}
