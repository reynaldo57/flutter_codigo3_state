

import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:flutter_codigo_3_state/services/superheroe_services.dart';

class RegisterSuperHeroPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: superheroeSevice.superheroeStream,
          builder: (BuildContext context, AsyncSnapshot snap){
            if (snap.hasData){
              Superheroe superheroe = snap.data;
              return Text(superheroe.name);
            }
            return Text("Registrar");
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
                Superheroe superheroe = new Superheroe(
                    name: "BAtman",
                    experience: 20,
                    powers: [
                      "Millonario",
                      "Inteligencia",
                      "Artes Marciales",
                      "Cientifico"
                    ]
                );
                superheroeSevice.loadSuperheroe(superheroe);
                },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Actualizar Experiencia", style: TextStyle(color: Colors.white),),
              onPressed: (){
                superheroeSevice.changeExperience(100);
              },
            ),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              child: Text("Añadir Superpoderes", style: TextStyle(color: Colors.white),),
              onPressed: (){
                superheroeSevice.addPowers();
              },
            ),
          ],
        ),
      ),
    );
  }
}
