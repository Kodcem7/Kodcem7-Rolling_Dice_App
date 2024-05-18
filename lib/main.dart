import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 244, 21, 5), Colors.orange),
        // body: GradientContainer.orange(),
      ),
    ),
  );
}
