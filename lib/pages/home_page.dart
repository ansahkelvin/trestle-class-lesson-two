import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var image = "assets/dice-2.png";

  void rollDice() {
    var randomNumber = Random().nextInt(6) + 1;
    setState(() {
      image = "assets/dice-$randomNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.deepPurpleAccent),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
                width: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: rollDice,
                child: const Text("Roll dice"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
