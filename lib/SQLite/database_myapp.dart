// database_helper.dart
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseMyApp {
  static Database? _database;
  static const String user = 'users';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE user (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            username TEXT,
            email TEXT,
            password TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertUser(Map<String, dynamic> user) async {
    final Database db = await database;
    await db.insert(DatabaseMyApp.user, user);
  }

  Future<Map<String, dynamic>?> getUserByEmailAndPassword(String email, String password) async {
    final Database db = await database;
    List<Map<String, dynamic>> users = await db.query(
      user,
      where: 'email = ? AND password = ?',
      whereArgs: [email, password],
    );

    return users.isNotEmpty ? users.first : null;
  }
}
