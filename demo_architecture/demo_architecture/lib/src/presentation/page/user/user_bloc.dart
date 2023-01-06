import 'package:demo_architecture/src/domain/entities/user_entities.dart';
import 'package:rxdart/rxdart.dart';

import '../../../data/repository_impl/userrepository_impl.dart';

class UserBloc{
  final userRepositoryImpl= UserRepositoryImpl();
  final addUserData = PublishSubject<UserEntities>();
  Stream<UserEntities> get addUserStream => addUserData.stream;

  addUser(UserEntities user) async {
    UserEntities userEntities = await userRepositoryImpl.addUser(user);
    addUserData.sink.add(userEntities);
  }

  dispose() {
    addUserData.close();
  }
}

final userBloc = UserBloc();
