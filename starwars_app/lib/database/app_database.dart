import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:starwars_app/database/dao/avatar_dao.dart';
import 'package:starwars_app/database/dao/star_war_dao.dart';


createDataBase() async{
  final String path = join(await getDatabasesPath(), 'starwars.db');
  return openDatabase(path, onCreate: (db, version){
    db.execute(StarWarsDao.tableSql);
    db.execute(AvatarDao.tableSql);
  }, version: 1,onDowngrade: onDatabaseDowngradeDelete );
}

