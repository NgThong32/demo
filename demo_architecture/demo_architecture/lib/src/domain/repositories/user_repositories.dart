import 'dart:ffi';

import 'package:demo_architecture/src/domain/entities/user_entities.dart';

abstract class UserData{
  Future<List<UserEntities>> getListUser() ;
  Future<UserEntities> addUser (UserEntities userEntities);
  Future<int> updateUser (UserEntities userEntities);
  Future<int> deleteUser (int id);
}
abstract class UserRepository extends UserData{

}