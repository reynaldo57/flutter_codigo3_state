

import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent,CalculatorState>{
  CalculatorBloc() : super(CalculatorState()){

   on<AddNumber1>((event, emit) {
     print(state.copyWith(number1: (1 + int.parse(state.number1)).toString()).number1);
     emit(state.copyWith(number1: (1 + int.parse(state.number1)).toString()));
   });
   on<AddNumber2>((event, emit) {
     print(state.copyWith(number2: (1 + int.parse(state.number2)).toString()).number2);
     emit(state.copyWith(number2: (1 + int.parse(state.number2)).toString()));
   });
   on<Reset>((event, emit) {

   });
   on<CalculateResult>((event, emit) {

   });

  }




}