import 'package:sqflite/sqflite.dart';
import 'app_database.dart';
import 'package:starwars_app/interfaces/local_storage_interface.dart';
import 'package:starwars_app/models/favorite.dart';

class StarWarsDao implements ILocalStorage{
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$_json TEXT,'
      '$_type TEXT)';

  static const String _tableName = 'starwars';
  static const String _id = 'id';
  static const String _json = 'json';
  static const String _type = 'type';


  @override
  Future delete(int key) async {
    final Database db = await createDataBase();
    return db.delete(_tableName, where: '$_id = ?', whereArgs: [key]);
  }

  @override
  Future getAll() async {
    final Database db = await createDataBase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    return toList(result);
  }

  @override
  Future put(String json, type) async{
    final Database db = await createDataBase();
    final Favorite favorite = Favorite(json,type);
    return db.insert(_tableName, favorite.toMap());
  }

  @override
  Future update(String key, id) {

    throw UnimplementedError();
  }

  List<Favorite> toList(List<Map<String, dynamic>> result) {
    final List<Favorite> favorites = [];
    for (Map<String, dynamic> map in result){
      favorites.add(Favorite(map[_json], map[_type], id: map[_id]));
    }
    return favorites;
  }
}
