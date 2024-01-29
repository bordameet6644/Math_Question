import 'package:flutter/material.dart';
import 'dart:math';
import 'package:math_ans/div.dart';
import 'package:math_ans/mul.dart';
import 'package:math_ans/sub.dart';
import 'package:math_ans/sum.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int number1 = 20;
  int number2 = 40;
  var orignalans = "60";
  var piackans;
  var abc = 0;
  var ans = "";

  void randomnumber() {
    setState(() {
      number1 = Random().nextInt(100) + 1;
      number2 = Random().nextInt(100) + 1;
      abc = number1 + number2;
      orignalans = abc.toString();
      ans = "";
    });
  }

  void checking() {
    setState(() {
      if (piackans == orignalans) {
        ans = " YOUR ANSWER IS TRUE";
        print("$piackans");
        print("$orignalans");
      } else {
        ans = " YOUR ANSWER IS FALSE";
        print("$piackans");
        print("$orignalans");
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("RANDOM QUSTION"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.lightBlueAccent,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage1(),
                                ),
                              );
                            },
                            child: Text(
                              "Sum",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.lightBlueAccent,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage2(),
                                ),
                              );
                            },
                            child: Text(
                              "Sub",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.lightBlueAccent,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage3(),
                                ),
                              );
                            },
                            child: Text(
                              "Mul",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.lightBlueAccent,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage4(),
                                ),
                              );
                            },
                            child: Text(
                              "Div",
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
