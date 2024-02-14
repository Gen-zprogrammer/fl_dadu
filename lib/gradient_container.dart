import 'package:fl_dadu/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.puple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    const startAligment = Alignment.topLeft;
    const endAligment = Alignment.bottomRight;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAligment,
          end: endAligment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
