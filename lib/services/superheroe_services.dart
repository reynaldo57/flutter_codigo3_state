


import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';

class SuperheroService with ChangeNotifier{

  Superheroe? _superheroe;
  Superheroe get supperheroe => this._superheroe!;

  set superheroe(Superheroe superheroe){
    _superheroe = _superheroe;
    notifyListeners();
  }
}