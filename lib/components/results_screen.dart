import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numberOfTotalQuestions = questions.length;
    var numberCorrectQuestions = summaryData.where((element) {
      return (element['correct-answer'] as String) ==
          (element['user-answer'] as String);
    }).length;

    // summaryData.forEach((element) {
    //   if((element['correct-answer'] as String) == (element['user-answer'] as String)){
    //     numberCorrectQuestions++;
    //   }
    // });

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "total questions : $numberOfTotalQuestions correct questions: $numberCorrectQuestions"),
            QuestionsSummary(summaryData),
            TextButton(onPressed: () {}, child: const Text("restart quiz"))
          ],
        ),
      ),
    );
  }
}
