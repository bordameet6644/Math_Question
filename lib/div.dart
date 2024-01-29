import 'dart:math';

import 'package:flutter/material.dart';



class MyHomePage4 extends StatefulWidget {
  MyHomePage4({super.key});

  @override
  State<MyHomePage4> createState() => _MyHomePageState4();
}

class _MyHomePageState4 extends State<MyHomePage4> {

  int number1 = 40;
  int number2 = 4;
  var orignalans = "10";
  var piackans;
  var abc = 0;
  var ans = "";

  void randomnumber() {
    setState(() {
      number1 = Random().nextInt(100) + 1;
      number2 = Random().nextInt(20) + 1;
      abc = number1 ~/ number2;
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

        title: Text("Division"),
      ),
      body: Container(color: Colors.grey,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
                      height: 50,
                      width: 50,
                      child: Text(
                        "$number1",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                      height: 50,
                      width: 50,
                      child: Text(
                        "/",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Colors.black),
                          left: BorderSide(width: 1.0, color: Colors.black),
                          right: BorderSide(width: 1.0, color: Colors.black),
                          bottom: BorderSide(width: 1.0, color: Colors.black),
                        ),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                      padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
                      height: 50,
                      width: 50,
                      child: Text(
                        "$number2",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container( height: 150,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black),
                      left: BorderSide(width: 1.0, color: Colors.black),
                      right: BorderSide(width: 1.0, color: Colors.black),
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  margin: EdgeInsets.fromLTRB(50, 50, 50, 50),
                  child: TextField(style: TextStyle(
                    color: Colors.black,
                  ),
                    onChanged: (value) {
                      piackans = value;
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.black),
                      left: BorderSide(width: 1.0, color: Colors.black),
                      right: BorderSide(width: 1.0, color: Colors.black),
                      bottom: BorderSide(width: 1.0, color: Colors.black),
                    ),
                  ),
                  padding: EdgeInsets.all(5),
                  height: 50,
                  child: TextButton(
                    onPressed: checking,
                    child: Text("ENTER"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  height: 100,
                  child: Text(
                    "$ans",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: randomnumber,
                    child: Text(
                      "PRESS AND GET NEW QUSTION",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          backgroundColor: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
