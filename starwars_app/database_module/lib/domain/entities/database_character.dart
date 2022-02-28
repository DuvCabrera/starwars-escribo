class DataBaseCharacterEntity {
  final int? id;
  final String name;
  final String type;

  DataBaseCharacterEntity({
    required this.name,
    required this.type,
    this.id,
  });
}
