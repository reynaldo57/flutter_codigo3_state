

part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent{

}

//definir eventos

class AddNumber1 extends CalculatorEvent{
  String? number1;
  AddNumber1({
    this.number1
});
}

class AddNumber2 extends CalculatorEvent{
  String? number2;
  AddNumber2({
    this.number2
  });
}

class CalculateResult extends CalculatorEvent{}

class Reset extends CalculatorEvent{}