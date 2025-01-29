import 'package:flutter/material.dart';
import 'package:quiz_app/components/answer_button.dart';
import 'package:quiz_app/components/styled_text.dart';
import 'package:quiz_app/data/questions_list.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.buttonHandler, {super.key});

  final void Function() buttonHandler;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  void buttonHandler() {
    widget.buttonHandler();
  }

  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
      if (questionIndex == questionsList.length) {
        questionIndex = 0;
        buttonHandler();
      }
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
            ...currentQuestion.shuffleAnswers().map((answer) =>
                AnswerButton(answer: answer, buttonHandler: answerQuestion)),
          ],
        ),
      ),
    );
  }
}
