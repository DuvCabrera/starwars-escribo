import 'package:sqflite/sqflite.dart';
import 'package:starwars_app/models/avatar.dart';
import '../app_database.dart';

class AvatarDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$_json TEXT)';

  static const String _tableName = 'avatar';
  static const String _id = 'id';
  static const String _json = 'json';


  Future<int> saveAvatar(String json) async{
    final Database db = await createDataBase();
    final Avatar avatar = Avatar(json);
    return db.insert(_tableName, avatar.toMap());
  }

  Future<int> updateAvatar(String json) async {
    final Database db = await createDataBase();
    final Avatar avatar = Avatar(json);
    return db.update(_tableName, avatar.toMap(), where: '$_id = ?');
  }

  Future<int> findAll() async {
    final Database db = await createDataBase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    return result.length;
  }
}