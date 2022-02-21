import 'package:sqflite/sqflite.dart';
import 'package:starwars_app/interfaces/local_storage_interface.dart';
import 'package:starwars_app/models/avatar.dart';
import 'app_database.dart';

class AvatarDao implements ILocalStorage {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY AUTOINCREMENT,'
      '$_json TEXT)';

  static const String _tableName = 'avatar';
  static const String _id = 'id';
  static const String _json = 'json';

  @override
  Future delete(int key) async {
    final Database db = await createDataBase();
    return db.delete(_tableName, where: '$_id = ?', whereArgs: [key]);
  }

  @override
  Future getAll() async{
    final Database db = await createDataBase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    return result.length;
  }

  @override
  Future put(String key, value) async {
    final Database db = await createDataBase();
    final Avatar avatar = Avatar(key);
    return db.insert(_tableName, avatar.toMap());
  }

  @override
  Future update(String key, id) async{
    final Database db = await createDataBase();
    final Avatar avatar = Avatar(key);
    return db.update(_tableName, avatar.toMap(), where: '$_id = ?');
  }
}