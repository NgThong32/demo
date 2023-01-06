import 'package:demo_architecture/src/ultils/constant.dart';

class UserEntities{
  final int id;
  final String name;
  final int age;

  const UserEntities({
    required this.id,
    required this.name,
    required this.age,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'User{id: $id, name: $name, age: $age}';
  }
  static String create() {
    return  'CREATE TABLE ${Constant.userTableName}(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)';
  }
}