

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_3_state/bloc/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';

class RegisterSuperHeroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Añadir SuperHeroe", style: TextStyle(color: Colors.white),),
              onPressed: (){
                Superheroe batman = Superheroe(name: "Batman", experience: 20, powers: ["millonario"]);
                BlocProvider.of<SuperheroeBloc>(context).add(SuperheroeLoad(sup: batman));
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Actualizar Experiencia", style: TextStyle(color: Colors.white),),
              onPressed: (){
                BlocProvider.of<SuperheroeBloc>(context).add(SuperheroeChangeExperience(newExperience: 2000));
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Añadir Superpoderes", style: TextStyle(color: Colors.white),),
              onPressed: (){
                BlocProvider.of<SuperheroeBloc>(context).add(SuperheroeAddPowers(power: "power 2"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
