import 'package:dependency_module/dependency_module.dart';

class AppDatabase {
  factory AppDatabase() => _instance;

  AppDatabase._();

  static final AppDatabase _instance = AppDatabase._();

  Database? _db;

  Future<Database> get db async => _db ?? await _initDb();

  Future<Database> _initDb() async {
    final String path = join(await getDatabasesPath(), 'starwars.db');
    return openDatabase(
      path,
      version: 1,
      onDowngrade: onDatabaseDowngradeDelete,
      onCreate: (Database db, int newerVersion) async {
        await _createAvatarTable(db);
        await _createStarWarsTable(db);
      },
    );
  }

  Future<void> _createStarWarsTable(Database db) async {
    await db.execute(
      '''CREATE TABLE starwars(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      type TEXT);''',
    );
  }

  Future<void> _createAvatarTable(Database db) async {
    await db.execute(
      '''CREATE TABLE avatar(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      avatar TEXT );''',
    );
  }
}
