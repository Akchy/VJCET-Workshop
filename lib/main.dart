import 'package:flutter/material.dart';
import 'package:vjcet_workshop/convert.dart';
import 'package:vjcet_workshop/home.dart';
import 'package:vjcet_workshop/increment.dart';
import 'package:vjcet_workshop/students.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
