import 'package:sqflite/sqflite.dart';
import 'package:starwars_app/database/app_database.dart';
import 'package:starwars_app/models/favorite.dart';

class StarWarsDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$_json TEXT,'
      '$_type TEXT)';

  static const String _tableName = 'starwars';
  static const String _id = 'id';
  static const String _json = 'json';
  static const String _type = 'type';


  Future<int> saveFavorite (String json, String type) async {
    final Database db = await createDataBase();
    final Favorite favorite = Favorite(json,type);
    return db.insert(_tableName, favorite.toMap());
  }

  Future<List<Favorite>> findAll() async {
    final Database db = await createDataBase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    return to_list(result);
  }

  List<Favorite> to_list(List<Map<String, dynamic>> result) {
    final List<Favorite> favorites = [];
    for (Map<String, dynamic> map in result){
      favorites.add(Favorite(map[_json], map[_type], id: map[_id]));
    }
    return favorites;
  }

  Future<int> deleteFavorite(int id) async{
    final Database db = await createDataBase();
    return db.delete(_tableName, where: '$_id = ?', whereArgs: [id]);
  }

}
