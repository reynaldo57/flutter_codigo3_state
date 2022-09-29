

import 'dart:async';

import 'package:flutter_codigo_3_state/model/super_hero_model.dart';

class _SuperheroeService{
  Superheroe? _superheroe;
  Superheroe get superheroe => this._superheroe!;

  StreamController<Superheroe> _superheroeStreamController = new StreamController<Superheroe>.broadcast();

  Stream<Superheroe> get superheroeStream => _superheroeStreamController.stream;

  loadSuperheroe(Superheroe superheroe){
    _superheroe = superheroe;
    _superheroeStreamController.add(_superheroe!);
  }

  bool get superheroeExist  => (_superheroe != null) ? true : false;

  closeStream(){
    _superheroeStreamController.close();
  }

}
final superheroeSevices = new _SuperheroeService();