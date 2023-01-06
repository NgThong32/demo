import 'package:demo_architecture/src/domain/entities/user_entities.dart';
import 'package:demo_architecture/src/presentation/page/home/home_bloc.dart';
import 'package:demo_architecture/src/presentation/page/user/user_bloc.dart';
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  TextEditingController nameController=TextEditingController();
  TextEditingController ageController=TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'User',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('User'),
          ),
          body: Column(
            children:  [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              TextField(
                controller:  ageController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
              ),
            ],
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var user=UserEntities(id: 0, name: nameController.text, age: int.parse(ageController.text));
           await userBloc.addUser(user);
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ),
      ),
    );
  }
}
