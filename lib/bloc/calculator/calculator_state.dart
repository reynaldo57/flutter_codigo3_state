

part of 'calculator_bloc.dart';

class CalculatorState{
  final String result;
  final String number1;
  final String number2;

  CalculatorState({
    this.result = "0",
    this.number1 = "0",
    this.number2 = "0",
  });

  CalculatorState copyWith({
    String? result, String? number1, String? number2
}){
    return CalculatorState(
      result: result ?? this.result,
      number1: number1 ?? this.number1,
      number2: number2 ?? this.number2,
    );
  }

}