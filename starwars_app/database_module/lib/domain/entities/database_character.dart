class DataBaseCharacterEntity {
  final int? id;
  final String json;
  final String type;

  DataBaseCharacterEntity({
    required this.json,
    required this.type,
    this.id,
  });
}
