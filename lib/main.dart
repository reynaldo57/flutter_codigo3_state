import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/cubit_superheroe/superheroe_cubit.dart';
import 'package:flutter_codigo_3_state/pages/info_superhero_page_dart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SuperheroeCubit()),
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
