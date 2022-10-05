
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'superheroe_event.dart';
part 'superheroe_state.dart';

class SuperheroeBloc extends Bloc<SuperuserEvent, SuperheroeState>{
  SuperheroeBloc() : super(SuperheroeState()) {

    print("ESTATE  ${state.superheroe}");
    print("ESTATE  ${state.superheroeExist}");

    on<SuperheroeLoad>((event, emit) {
      emit(SuperheroeState(superheroe: event.sup));
    });

    on<SuperheroeChangeExperience>((event, emit) {

    });

    on<SuperheroeAddPowers>((event, emit) {

    });

    on<SuperheroeDelete>((event, emit) {

    });
  }
}