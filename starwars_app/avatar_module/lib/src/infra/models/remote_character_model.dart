import '../../domain/entities/entities.dart';

class RemoteCharacterModel implements StarWarsCharacterEntity {
  @override
  final String name;

  RemoteCharacterModel({required this.name});

  factory RemoteCharacterModel.fromJson(Map<String, dynamic> json) =>
      RemoteCharacterModel(name: json['name']);

  StarWarsCharacterEntity toEntity() => StarWarsCharacterEntity(name: name);

  Map<String, dynamic> toMap() => {'name': name};
}
