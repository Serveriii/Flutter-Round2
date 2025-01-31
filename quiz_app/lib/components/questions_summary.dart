import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: summaryData.map((data) {
          return Row(children: [
            Text(((data['question_index'] as int) + 1).toString()),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  SizedBox(height: 10),
                  Text('Correct Answer: ${data['correct_answer']}'),
                  Text('Selected Answer: ${data['selected_answer']}'),
                ],
              ),
            )
          ]);
        }).toList(),
      ),
    );
  }
}
