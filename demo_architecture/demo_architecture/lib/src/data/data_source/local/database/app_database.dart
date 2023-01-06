import 'package:demo_architecture/src/domain/entities/user_entities.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static Database? _database;
  static Future<Database> getInstance() async {
    WidgetsFlutterBinding.ensureInitialized();
    _database ??= await openDatabase('my_db.db', version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(UserEntities.create());
    });
    return _database!;
  }

  static close() async {
    await _database!.close();
  }
}
