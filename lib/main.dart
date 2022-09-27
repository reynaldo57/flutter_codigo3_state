import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/pages/info_superhero_page_dart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo - singleton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfoSuperheroPage(),
    );
  }
}
