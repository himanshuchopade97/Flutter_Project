import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:frivia/pages/game_page.dart';
import 'package:frivia/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //api: https://opentdb.com/api.php?amount=10&difficulty=easy&type=boolean
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frivia',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
        primarySwatch: Colors.blue,
        fontFamily: 'ArchitectsDaughter',
      ),
      home: HomePage(),
    );
  }


}
