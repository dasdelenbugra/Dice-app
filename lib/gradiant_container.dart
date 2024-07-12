import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAligment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradiantContainer extends StatelessWidget {
  const GradiantContainer(
      {super.key, required this.colors}); //Ana sınıfın kurucu işlevi çağrıldı
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAligment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
