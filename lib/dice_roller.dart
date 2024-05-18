import 'dart:math';
import 'package:flutter/material.dart';

var randomNum = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 3;
  var rollingDice = 'assets/images/dice-4.png';
  void rollDice() {
    setState(() {
      diceRoll = randomNum.nextInt(6) + 1; // [1,6] 1<= 7>
      rollingDice = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          rollingDice,
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 25,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
