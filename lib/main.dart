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
  //variables
  double firstNum = 0.0;
  double secondNum = 0.0;
  var input = "";
  var output = "";
  var operation = "";

  onButtonClick(value) {
    //if value is "AC"

    if (value == "AC") {
      input = "";
      output = "";
    } else if (value == "<-") {
      input = input.substring(0, input.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        input,
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        output,
                        style: TextStyle(
                            fontSize: 25, color: Colors.white.withOpacity(0.7)),
                      ),
                      SizedBox(height: 20),
                    ],
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
              padding: const EdgeInsets.all(22),
              primary: buttonbgcolor),
          onPressed: () => onButtonClick(text),
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
