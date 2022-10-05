
import 'package:flutter_codigo_3_state/model/super_hero_model.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'superheroe_event.dart';
part 'superheroe_state.dart';

class SuperheroeBloc extends Bloc<SuperuserEvent, SuperheroeState>{
  SuperheroeBloc() : super(SuperheroeState()) {
    on<SuperheroeLoad>((event, emit) {

    });

    on<SuperheroeChangeExperience>((event, emit) {

    });

    on<SuperheroeAddPowers>((event, emit) {

    });

    on<SuperheroeDelete>((event, emit) {

    });
  }
}