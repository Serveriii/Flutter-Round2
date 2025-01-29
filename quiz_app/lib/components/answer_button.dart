import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answer, required this.buttonHandler});

  final String answer;
  final void Function() buttonHandler;

  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 185, 74, 0),
        foregroundColor: Colors.white,
      ),
      onPressed: buttonHandler,
      child: Text(
        answer,
        textAlign: TextAlign.center,
      ),
    );
  }
}
