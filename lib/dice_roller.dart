import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Ayo Main!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 30.0,
        ),
        ElevatedButton.icon(
          icon: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
          label: const Text(
            "Putar Dadu",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: const StadiumBorder(),
          ),
          onPressed: rollDice,
        ),
        // TextButton(
        //     onPressed: rollDice,
        //     style: TextButton.styleFrom(
        //         foregroundColor: Colors.white,
        //         padding: const EdgeInsets.only(top: 30)),
        //     child: const Text(
        //       "Putar Dadu",
        //       style: TextStyle(color: Colors.white, fontSize: 18),
        //     ))
      ],
    );
  }
}
