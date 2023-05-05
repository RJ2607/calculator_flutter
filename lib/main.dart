import 'package:calculator/colors.dart';
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
      body: Column(
        children: [
          Expanded(
              child: Container(
                  padding: const EdgeInsets.all(12),
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [Text("Input")],
                  ))),
          Row(
            children: [
              button(
                  text: "AC",
                  buttonbgcolor: operatorColor,
                  tColor: orangeColor),
              button(
                  text: "<-",
                  buttonbgcolor: operatorColor,
                  tColor: orangeColor),
              button(text: "", buttonbgcolor: Colors.transparent),
              button(
                  text: "/", buttonbgcolor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(
                  text: "x", buttonbgcolor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(
                  text: "-", buttonbgcolor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(
                  text: "+", buttonbgcolor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(
                  text: "%", buttonbgcolor: operatorColor, tColor: orangeColor),
              button(text: "0"),
              button(text: "."),
              button(text: "=", buttonbgcolor: Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  Widget button({text, tColor = Colors.white, buttonbgcolor = buttonColor}) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(22),
              primary: buttonbgcolor),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: tColor,
              fontWeight: FontWeight.bold,
            ),
          )),
    ));
  }
}
