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
    );
  }
}

class dice extends StatelessWidget {
  const dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 37, 8, 86),
              Color.fromARGB(255, 18, 4, 56)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
