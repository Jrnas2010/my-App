

import 'package:my_app/JSON/event_table.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class EventPostDatabase {
  static int version = 1;
  static String dbName = "EventPost.db";


    // create new table

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), dbName),
    onCreate: (db, version) async =>
    await db.execute('''
    CREATE TABLE event_post (
     usrId INTEGER PRIMARY KEY AUTOINCREMENT,
     postTitle Varchar(100) Not Null,
     arabicdescription TEXT NUT NULL, 
     englishdescription TEXT NUT NULL, 
     postImage,
     timestamp TEXT,
     likes INTEGER,
     views INTEGER
     );'''
    ), version: version
    );
  }

      // add data to table

  static Future<int> addEventPost(Events eventPost) async {
    final db = await _getDB();
    return await db.insert("EventPost", eventPost.toJson(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }
      // update data to table

  static Future<int> updateEventPost(Events eventPost) async {
    final db = await _getDB();
    return await db.update(
        "EventPost", eventPost.toJson(),
        where: 'postId = ?',
        whereArgs: [eventPost.postId],
        conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

      // delete data from table
  static Future<int> deleteEventPost(Events eventPost) async {
    final db = await _getDB();
    return await db.delete(
        "EventPost",
        where: 'postId = ?',
        whereArgs: [eventPost.postId],
    );
  }


  static Future<List<Events>?> getAllEventPost() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("Event Post");

    if(maps.isEmpty){
      return null;
    }

    return List.generate(maps.length, (index) => Events.fromJson(maps[index]));

  }


}