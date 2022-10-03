


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculatorage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1", style: TextStyle(fontSize: 30.0),),
              SizedBox(width: 20.0,),
              MaterialButton(
                onPressed: (){},
                child: Text("Add", style: TextStyle(color: Colors.white),),
                color: Colors.black87,
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("2", style: TextStyle(fontSize: 30.0),),
              SizedBox(width: 20.0,),
              MaterialButton(
                onPressed: (){},
                child: Text("Add", style: TextStyle(color: Colors.white),),
                color: Colors.black87,
              )
            ],
          ),
          Divider(),
          Text(
            "Result::10",
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            color: Colors.deepPurpleAccent,
            child: Text(
              "Calculate",
              style: TextStyle(fontSize: 16.0, color: Colors.white,),
            ),
            onPressed: (){

            },
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            color: Colors.greenAccent,
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 16.0, color: Colors.white,),
            ),
            onPressed: (){

            },
          ),


        ],
      ),
    );
  }
}

