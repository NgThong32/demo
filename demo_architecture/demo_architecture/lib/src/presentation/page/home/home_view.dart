import 'package:demo_architecture/src/data/dtos/album_dto.dart';
import 'package:demo_architecture/src/presentation/page/home/home_bloc.dart';
import 'package:flutter/material.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  void initState() {
    super.initState();
    bloc.getAlbum();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: StreamBuilder(
          stream: bloc.fetchAlbum,
          builder: (context,snapshot){
            if (snapshot.hasData) {

              return Center(child: Text(snapshot.data!.title.toString()));
            } else if (snapshot.hasError) {
              return const Text("Lỗi");
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          },
        )
      ),
    );
  }
}