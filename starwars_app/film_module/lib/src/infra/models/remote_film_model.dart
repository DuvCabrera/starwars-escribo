import '../../domain/domain.dart';

class RemoteFilmModel implements StarWarsFilmEntity {
  @override
  final String name;

  RemoteFilmModel({required this.name});

  factory RemoteFilmModel.fromJson(Map<String, dynamic> json) =>
      RemoteFilmModel(name: json['title']);

  StarWarsFilmEntity toEntity() => StarWarsFilmEntity(name: name);

  Map<String, dynamic> toMap() => {'name': name};
}
