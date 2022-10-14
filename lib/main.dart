import 'package:flutter/material.dart';
import 'package:json_listview/Pages/Home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Api call in ListView',
      home: HomePage(),
    );
  }
}


