import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((data) {
              return Row(children: [
                Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: data['selected_answer'] == data['correct_answer']
                          ? const Color.fromARGB(255, 1, 255, 115)
                          : const Color.fromARGB(255, 243, 49, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    child:
                        Text(((data['question_index'] as int) + 1).toString())),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        data['question'] as String,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        '${data['correct_answer']}',
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '${data['selected_answer']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 2, 83, 116),
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
