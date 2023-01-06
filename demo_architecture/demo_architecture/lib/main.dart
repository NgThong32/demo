import 'dart:async';
import 'dart:convert';

import 'package:demo_architecture/src/presentation/page/home/home_bloc.dart';
import 'package:demo_architecture/src/presentation/page/home/home_view.dart';
import 'package:demo_architecture/src/presentation/page/user/user_view.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp( const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView()
    );
  }

}
