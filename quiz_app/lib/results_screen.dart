import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/dummy.dart';
import 'package:quiz_app/models/question_summary.dart';
import 'package:quiz_app/models/results_charts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartQuiz,
  });

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summary = getSummaryData();
    var numOfTotalQuestions = questions.length;
    var numOfCorrectAnswers =
        summary.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          spacing: 25,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Congratulations!',
              style: GoogleFonts.lato(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            Text(
              'You answered $numOfCorrectAnswers out of  $numOfTotalQuestions questions',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ResultsCharts(summaryData: summary),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: summary),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              label: const Text('Restart Quiz'),
              icon: const Icon(Icons.refresh),
              onPressed: restartQuiz,
            ),
          ],
        ),
      ),
    );
  }
}
