import 'package:first_app/components/dice_roller.dart';
import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
 const GradientContainer(
      {super.key, required this.topColor, required this.bottomColor});

  const GradientContainer.orange({super.key})
      : topColor = Colors.orange,
        bottomColor = Colors.deepOrange;

  const GradientContainer.purple({super.key})
      : topColor = Colors.purple,
        bottomColor = Colors.deepPurple;

  final Color topColor;
  final Color bottomColor;
  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            topColor,
            bottomColor,
          ],
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
