import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: calculatorapp(),
  ));
}

class calculatorapp extends StatefulWidget {
  const calculatorapp({super.key});

  @override
  State<calculatorapp> createState() => _calculatorappState();
}

class _calculatorappState extends State<calculatorapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [Expanded(child: Container(color: Colors.red))]),
    );
  }
}
