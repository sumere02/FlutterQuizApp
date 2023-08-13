import 'package:avd_basics/data/questions.dart';
import 'package:avd_basics/home_screen.dart';
import 'package:avd_basics/question_summary/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.givenAnswers,this.swithScreen, {super.key});
  final List<String> givenAnswers;
  final void Function() swithScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < givenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].question,
          "correct_answer": questions[i].answers[0],
          "given_answer": givenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data["correct_answer"] == data["given_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderText(
              "Your answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
            ),
            const SizedBox(
              height: 30,
            ),
            //Lazy Column
            QuestionsSummary(
              summaryData,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.restart_alt,
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      18,
                    ),
                  )),
              onPressed: swithScreen,
              label: const Text(
                "Retry Quiz",
              ),
            )
          ],
        ),
      ),
    );
  }
}
