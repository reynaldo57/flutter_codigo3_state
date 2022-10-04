

import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent,CalculatorState>{
  CalculatorBloc() : super(CalculatorState()){

   on<AddNumber1>((event, emit) {
     print("ADD NUMBER 1::: ${event}");
     print("ADD NUMBER 1::: ${emit}");
   });
   on<AddNumber2>((event, emit) {
     print("ADD NUMBER 2::: ${event}");
     print("ADD NUMBER 2::: ${emit}");
   });
   on<Reset>((event, emit) {
     print("ADD NUMBER 3::: ${event}");
     print("ADD NUMBER 3::: ${emit}");
   });
   on<CalculateResult>((event, emit) {
     print("ADD NUMBER 4::: ${event}");
     print("ADD NUMBER 4::: ${emit}");
   });

  }




}