import 'package:demo_architecture/src/data/data_source/local/database/user_repository_data_source.dart';
import 'package:demo_architecture/src/domain/entities/user_entities.dart';
import 'package:demo_architecture/src/domain/repositories/user_repositories.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryDataSource userRepositoryDataSource= UserRepositoryDataSource();
  @override
  Future<UserEntities> addUser(UserEntities userEntities) {
  return userRepositoryDataSource.addUser(userEntities);
  }

  @override
  Future<int> deleteUser(int id) {
    return userRepositoryDataSource.deleteUser(id);
  }

  @override
  Future<List<UserEntities>> getListUser() {
    return userRepositoryDataSource.getListUser();
  }

  @override
  Future<int> updateUser(UserEntities userEntities) {
   return userRepositoryDataSource.updateUser(userEntities);
  }

}