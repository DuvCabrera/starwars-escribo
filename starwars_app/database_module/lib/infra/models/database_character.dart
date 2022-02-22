import '../../domain/domain.dart';

class DataBaseCharacterModel implements DataBaseCharacterEntity {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String type;

  DataBaseCharacterModel({required this.name, required this.type, this.id});

  factory DataBaseCharacterModel.fromMap(Map<String, dynamic> json) =>
      DataBaseCharacterModel(
          id: int.tryParse(json['id']), name: json['name'], type: json['type']);

  Map<String, dynamic> toMap() => {'name': name, 'type': type};

  DataBaseCharacterEntity toEntity() =>
      DataBaseCharacterEntity(name: name, type: type, id: id);
}
