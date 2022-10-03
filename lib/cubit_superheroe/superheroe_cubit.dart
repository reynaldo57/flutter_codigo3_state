
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'superheroe_state.dart';

class SuperheroeCubit extends Cubit<SuperheroeState>{
  SuperheroeCubit() : super(SuperheroeInit());

  // implementar metodos

  // Cargar superheroe

  void loadSuperheroe(Superheroe superheroe){
    //emitir el nuevo estado
    emit(SuperheroeCreate(superheroe: superheroe));
  }

//Cambiar Experiencia

  void changeExperience(int exp){
    final currentState = state;
    if(currentState is SuperheroeCreate){
      //currentState.superheroe.experience = 100;
      final newSuperheroe = currentState.superheroe.copyWith(experience: exp);
      emit(SuperheroeCreate(superheroe: newSuperheroe));
    }
}

//Añadir poderes

  void addPowers(){

    final currentState = state;
    if(currentState is SuperheroeCreate){
      List<String> newPowers = currentState.superheroe.powers;
      newPowers.add("Power ${newPowers.length + 1}");
      final newSuperheroe = currentState.superheroe.copyWith(powers: newPowers);
      emit(SuperheroeCreate(superheroe: newSuperheroe));
      //emit(SuperheroeCreate(superheroe: currentState.superheroe.copyWith()..powers.add("power 12")));
    }
  }

//Eliminar superheroe

  void deleteSuperheroe(){
    emit(SuperheroeInit());
  }

}
