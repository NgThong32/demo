
import 'package:demo_architecture/src/data/data_source/local/database/app_database.dart';
import 'package:demo_architecture/src/domain/entities/user_entities.dart';
import 'package:demo_architecture/src/domain/repositories/user_repositories.dart';
import 'package:demo_architecture/src/ultils/constant.dart';
import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';

class UserRepositoryDataSource implements UserRepository{
    Database? database;
   UserRepositoryDataSource(){
     _getDbInstance();
   }
   void _getDbInstance() async {
     WidgetsFlutterBinding.ensureInitialized();
     database =await AppDatabase.getInstance();
   }
  @override
  Future<UserEntities> addUser(UserEntities userEntities)  async {
     await database?.insert(Constant.userTableName, userEntities.toMap(),conflictAlgorithm: ConflictAlgorithm.replace);
     return userEntities;
  }

  @override
  Future<int> deleteUser(int id) async {
   return  await database!.delete(Constant.userTableName,where: 'id = ?',whereArgs: [id]);
  }

  @override
  Future<int> updateUser(UserEntities userEntities) async {
    return  await database!.update(Constant.userTableName,userEntities.toMap(),where: 'id = ?',whereArgs: [userEntities.id]);
  }

  @override
  Future<List<UserEntities>> getListUser() async {
    final List<Map<String, dynamic>> maps =  await database!.query(Constant.userTableName);
    return List.generate(maps.length, (i) {
      return UserEntities(
        id: maps[i]['id'],
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  }
  
}