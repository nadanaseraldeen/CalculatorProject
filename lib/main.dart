import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Calculator', style:TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,
        )),
        backgroundColor: Colors.white60,
        centerTitle: true,
      ),
      body: calculator(),

    );
  }
}


class calculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();}

class _MyCalculatorState extends State<calculator> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  TextEditingController results = TextEditingController();
  String operation = '+';


  void calculateSum() {
    double num1 = double.tryParse(number1.text) ?? 0.0;
    double num2 = double.tryParse(number2.text) ?? 0.0;
    double sum = num1 + num2;
    results.text = sum.toString();
  }
  void calculateSubtraction()
  {
    double num1 = double.tryParse(number1.text) ?? 0.0;
    double num2 = double.tryParse(number2.text) ?? 0.0;
    double subtraction = num1 - num2;
    results.text = subtraction.toString();

  }
  void calculateMultiplication()
  {
    double num1 = double.tryParse(number1.text) ?? 0.0;
    double num2 = double.tryParse(number2.text) ?? 0.0;
    double multiplication = num1 * num2;
    results.text = multiplication.toString();

  }

  void calculateDivision()
  {
    double num1 = double.tryParse(number1.text) ?? 0.0;
    double num2 = double.tryParse(number2.text) ?? 0.0;
    double division = num1 / num2;
    results.text = division.toString();

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: number1,
            decoration: InputDecoration(
              labelText: 'Enter the first number',
            ),
            keyboardType: TextInputType.number,
          ),

          TextField(
            controller: number2,
            decoration: InputDecoration(
              labelText: 'Enter the second number',
            ),
            keyboardType: TextInputType.number,
          ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              width: 140,
              height: 30,
          child :ElevatedButton(
            onPressed: calculateSum,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Text('+', style: TextStyle(fontSize: 24)),
          ),
          ),
          Container(
            width: 140,
            height: 30,
            child :ElevatedButton(
              onPressed: calculateSubtraction,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text('-', style: TextStyle(fontSize: 24)),
            ),
          ),

          Container(
            width: 140,
            height: 30,
            child :ElevatedButton(
              onPressed: calculateMultiplication,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text('*', style: TextStyle(fontSize: 24)),
            ),
          ),

          Container(
            width: 140,
            height: 30,
            child :ElevatedButton(
              onPressed: calculateDivision,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white54),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Text('/', style: TextStyle(fontSize: 24)),
            ),
          ),
      ]
        ),
          TextField(
            controller: results,
            decoration: InputDecoration(
              labelText: 'Result',
            ),
            enabled: false,
          ),
        ],
      ),
    );
  }
}