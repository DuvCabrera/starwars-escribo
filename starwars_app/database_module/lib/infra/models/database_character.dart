import '../../domain/domain.dart';

class DataBaseCharacterModel implements DataBaseCharacterEntity {
  @override
  final int? id;
  @override
  final String json;
  @override
  final String type;

  DataBaseCharacterModel({required this.json, required this.type, this.id});

  factory DataBaseCharacterModel.fromMap(Map<String, dynamic> json) =>
      DataBaseCharacterModel(
          id: int.tryParse(json['id']), json: json['json'], type: json['type']);

  Map<String, dynamic> toMap() => {'json': json, 'type': type};

  DataBaseCharacterEntity toEntity() =>
      DataBaseCharacterEntity(json: json, type: type, id: id);
}
