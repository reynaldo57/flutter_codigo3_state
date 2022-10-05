import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_3_state/bloc/calculator/calculator_bloc.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
        ),
        body: BlocBuilder<CalculatorBloc, CalculatorState>(
            builder: (context, state) {
              print("SSS ${state}");
              print("SSS ${state.result}");
              print("SSS ${state.number1}");
              print("SSS ${state.number2}");
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.number1,
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      BlocProvider.of<CalculatorBloc>(context)
                          .add(AddNumber1());
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black87,
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.number2,
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      BlocProvider.of<CalculatorBloc>(context)
                          .add(AddNumber2());
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black87,
                  ),
                ],
              ),
              Divider(),
              Text(
                "Result:: 10",
                style: TextStyle(fontSize: 32.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: () {
                  BlocProvider.of<CalculatorBloc>(context)
                      .add(CalculateResult());
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              MaterialButton(
                color: Colors.greenAccent,
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: () {
                  BlocProvider.of<CalculatorBloc>(context).add(Reset());
                },
              ),
            ],
          );
        }));
  }
}
