

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_3_state/bloc/superheroe/superheroe_bloc.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:flutter_codigo_3_state/pages/register_superhero_page.dart';

class InfoSuperheroPage extends StatelessWidget {
  const InfoSuperheroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SuperHeroe"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSuperHeroPage()));
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      body: BlocBuilder<SuperheroeBloc, SuperheroeState>(
        builder: (context, state){
          if(state.superheroeExist){
            return InfoSuperheroeWidget(superheroe: state.superheroe!,);
          }else{
            return Center(child: Text("Aun no hayy Superheroe"),);
          }

        },
      )
    );
  }
}

class InfoSuperheroeWidget extends StatelessWidget {

  Superheroe superheroe;
  InfoSuperheroeWidget({required this.superheroe});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informacion General",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Nombre: ${superheroe.name}"),
            ),
            ListTile(
              title: Text("Años de Experiencia: ${superheroe.experience}"),
            ),
            Text(
              "Poderes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
            ),
            Divider(),
            ...superheroe.powers.map((e) => ListTile(
              title: Text(e),))

          ],
        ),
      ),
    );
  }
}
