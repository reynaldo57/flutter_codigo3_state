import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:flutter_codigo_3_state/pages/register_superhero_page.dart';
import 'package:flutter_codigo_3_state/services/superheroe_services.dart';
import 'package:provider/provider.dart';

class InfoSuperheroPage extends StatelessWidget {
  const InfoSuperheroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SuperheroService superheroe = Provider.of<SuperheroService>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("SuperHeroe"),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegisterSuperHeroPage()));
          },
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.add),
        ),
        body: superheroe.superheroeExist
            ? SupeheroeInformationWidget(
                superheroe: superheroe.superheroe,
              )
            : Center(
                child: Text("Aun no hay superheroe"),
              ));
  }
}

class SupeheroeInformationWidget extends StatelessWidget {
  Superheroe superheroe;

  SupeheroeInformationWidget({required this.superheroe});

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
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            Divider(),
            ...superheroe.powers.map(
              (e) => ListTile(
                title: Text(e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
