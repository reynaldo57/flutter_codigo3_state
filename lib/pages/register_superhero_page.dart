

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_3_state/cubit_superheroe/superheroe_cubit.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:provider/provider.dart';

class RegisterSuperHeroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<SuperheroeCubit, SuperheroeState>(
          builder: (context, state){
            switch(state.runtimeType){
              case SuperheroeInit:
                return Text("Register");
              case SuperheroeCreate:
                return Text((state as SuperheroeCreate).superheroe.name);
              default:
                return Text("Register");
            }
          },
        ),
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

                Superheroe batman = new Superheroe(
                    name: "Batman",
                    experience: 30,
                    powers: ["Millonario"],
                );

                context.read<SuperheroeCubit>().loadSuperheroe(batman);
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Actualizar Experiencia", style: TextStyle(color: Colors.white),),
              onPressed: (){
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Añadir Superpoderes", style: TextStyle(color: Colors.white),),
              onPressed: (){
              },
            ),
          ],
        ),
      ),
    );
  }
}
