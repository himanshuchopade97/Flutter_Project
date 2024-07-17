// ignore_for_file: unnecessary_import, no_leading_underscores_for_local_identifiers

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibmi/pages/main_page.dart';
import 'package:ibmi/utils/calculator.dart';

void main() async{
  await calcualteBMIAsync(Dio());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "IBMI",
      initialRoute: "/",
      routes: { 
        "/" : (_context) => MainPage(),
      },
    );
  }
}
