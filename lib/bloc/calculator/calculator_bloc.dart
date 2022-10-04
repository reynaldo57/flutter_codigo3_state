

import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent,CalculatorState>{
  CalculatorBloc() : super(CalculatorState()){

   on<AddNumber1>((event, emit) {});
   on<AddNumber2>((event, emit) {});
   on<Reset>((event, emit) {});
   on<CalculateResult>((event, emit) {});

  }




}