import 'package:flutter/material.dart';
import '../models/question.dart';
import '../theme/app_colors.dart';

class ResultScreen extends StatelessWidget {
  final List<Question> questions;
  final Map<int, int> answers;

  const ResultScreen({super.key, required this.questions, required this.answers});

  @override
  Widget build(BuildContext context) {
    int correct = 0;
    for (int i = 0; i < questions.length; i++) {
      if (answers[i] == questions[i].correctIndex) correct++;
    }

    final pct = (correct / questions.length * 100).round();

    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: AppColors.card,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 12)],
              ),
              child: Center(
                child: Text('$pct%', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 24),
            Text('You answered $correct out of ${questions.length} correctly', style: const TextStyle(fontSize: 16), textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Try Again'),
            )
          ],
        ),
      ),
    );
  }
}