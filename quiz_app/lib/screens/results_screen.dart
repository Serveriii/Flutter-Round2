import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/components/styled_text.dart';
import 'package:quiz_app/data/questions_list.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.selectedAnswers, this.restartQuiz, {super.key});

  final List<String> selectedAnswers;
  final void Function() restartQuiz;

  void buttonHandler() {
    restartQuiz();
  }

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionsList[i].question,
        'correct_answer': questionsList[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questionsList.length;
    final numCorrectAnswers = summaryData.where((data) {
      return data['selected_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          StyledText(
              'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!'),
          QuestionsSummary(summaryData),
          OutlinedButton.icon(
            onPressed: buttonHandler,
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
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            label: Text('Back to Start', style: TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
