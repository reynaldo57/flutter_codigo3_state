import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/pages/info_superhero_page_dart.dart';
import 'package:flutter_codigo_3_state/services/superheroe_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => SuperheroService()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: InfoSuperheroPage(),
      ),
    );
  }
}
