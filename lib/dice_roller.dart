import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //Alt çizginin anlamı özel demektir ve sadece bu dosyada kullanılabilcektir
  var currentdiceroller = 2;

  var zarAktivet = 'assets/images/dice-2.png';
  void zarAt() {
    setState(() {
      currentdiceroller = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdiceroller.png',
          width: 200,
        ),
        // const SizedBox(height: 30),
        TextButton(
          onPressed: zarAt,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Zar at"),
        )
      ],
    );
  }
}
