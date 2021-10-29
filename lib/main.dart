import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flipping Card'),
          centerTitle: true,
        ),
        body: Center(
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
              speed: 700,
              front: Container(
                width: 200,
                height: 200,
                color: Colors.lime,
                child: const Center(child: const Text('What is your Name')),
              ),
              back: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: const Center(child: const Text('My name is Vikkybliz')),
              )
          ),
        ),
      ),
    );
  }
}

