import 'package:flutter/material.dart';
import 'package:quiz_app/components/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.buttonHandler, {super.key});

  final void Function(String screen) buttonHandler;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 40,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(174, 255, 255, 255),
          ),
          const StyledText('Learn Flutter the fun way!'),
          OutlinedButton.icon(
            onPressed: () => buttonHandler('questions-screen'),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.orangeAccent,
              side: const BorderSide(
                color: Colors.white,
                width: 1,
              ),
              shadowColor: const Color.fromARGB(255, 0, 0, 0),
              elevation: 4,
            ),
            icon: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white,
            ),
            label: Text('Start Quiz', style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
