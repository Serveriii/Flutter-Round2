import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/components/styled_text.dart';
import 'package:quiz_app/data/questions_list.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(
      {super.key, required this.answerHandler, required this.switchScreen});

  final void Function(String answer) answerHandler;
  final void Function(String screen) switchScreen;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;

  void answerQuestion(answer) {
    setState(() {
      widget.answerHandler(answer);
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questionsList[questionIndex];

    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.question),
            const SizedBox(height: 20),
            ...currentQuestion.shuffleAnswers().map((answer) => AnswerButton(
                answer: answer,
                buttonHandler: () {
                  answerQuestion(answer);
                })),
          ],
        ),
      ),
    );
  }
}
