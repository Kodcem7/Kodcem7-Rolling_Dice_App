import 'package:flutter/material.dart';

class MyStyledText extends StatelessWidget {
  const MyStyledText(String inputText, {super.key}) : outputText = inputText;
  /* you can also use just this.text instead of String inputText this refers to to input text to automatically change to output. */
  final String outputText;
  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28.5,
          fontStyle: FontStyle.italic),
    );
  }
}
