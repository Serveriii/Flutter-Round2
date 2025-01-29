import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      required this.topColor,
      required this.bottomColor,
      required this.currentScreen});

  final Color topColor;
  final Color bottomColor;
  final Widget currentScreen;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [topColor, bottomColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: currentScreen);
  }
}
