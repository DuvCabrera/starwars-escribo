import '../../domain/domain.dart';

class RemoteFavoriteModel implements StarWarsFavoriteEntity {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String type;

  RemoteFavoriteModel({required this.name, required this.type, this.id});

  factory RemoteFavoriteModel.fromJson(Map<String, dynamic> json) =>
      RemoteFavoriteModel(
          name: json['name'], type: json['type'], id: json['id']);

  StarWarsFavoriteEntity toEntity() =>
      StarWarsFavoriteEntity(name: name, type: type, id: id);

  Map<String, dynamic> toMap() => {'name': name, 'type': type, 'id': id};
}
