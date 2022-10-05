import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_3_state/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_codigo_3_state/bloc/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo_3_state/pages/calculator_page.dart';
import 'package:flutter_codigo_3_state/pages/info_superhero_page_dart.dart';
import 'package:flutter_codigo_3_state/pages/register_superhero_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CalculatorBloc()),
        BlocProvider(create: (_) => SuperheroeBloc()),
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
