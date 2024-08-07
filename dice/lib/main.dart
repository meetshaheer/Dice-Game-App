import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: dice(),
      debugShowCheckedModeBanner: false,
      title: "Roll Dice",
    );
  }
}
//      colors: [Color.fromARGB(255, 37, 8, 86), Color.fromARGB(255, 18, 4, 56)],

class dice extends StatefulWidget {
  const dice({super.key});

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  var activeDiceImage = "assets/images/dice-1.png";

  rollDice() {
    var randomNumber = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-$randomNumber.png";
    });
  }

  Gradient gradientColor(Color color1, Color color2) {
    return LinearGradient(
      colors: [color1, color2],
      begin: Alignment.topRight,
      end: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: gradientColor(
          Color.fromARGB(255, 37, 8, 86),
          Color.fromARGB(255, 18, 4, 56),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                activeDiceImage,
                width: 180,
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 70,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    rollDice();
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Roll Up",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 24, 3, 59),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
