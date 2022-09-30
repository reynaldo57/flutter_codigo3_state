


import 'package:flutter/material.dart';
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';

class SuperheroService with ChangeNotifier{

  Superheroe? _superheroe = Superheroe(name: "", experience: 0, powers: []);
  Superheroe get superheroe => this._superheroe!;

  set superheroe(Superheroe superheroe){
    _superheroe = superheroe;
    notifyListeners();
  }
  bool get superheroeExist => _superheroe != null;

  deleteSuperheroe(){
    _superheroe = null;
    notifyListeners();
  }

  updateExperience(int exp){
    _superheroe!.experience = exp;
    notifyListeners();
  }

  addPowers(){
    _superheroe!.powers.add("Powers ${_superheroe!.powers.length + 1}");
    notifyListeners();
  }

}