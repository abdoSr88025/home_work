import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/screens/result_screen.dart';
import '../data/questions_data.dart';
import '../widgets/option_card.dart';
import '../widgets/quiz_timer.dart';
import '../theme/app_colors.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late List<Question> _questions;
  int _currentIndex = 0;
  final Map<int, int> _answers = {};
  Timer? _timer;
  int _remaining = 30;

  @override
  void initState() {
    super.initState();
    _questions = sampleQuestions;
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _remaining = 30);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        _remaining--;
        if (_remaining <= 0) _nextQuestion();
      });
    });
  }

  void _choose(int optionIndex) {
    setState(() {
      _answers[_currentIndex] = optionIndex;
    });
  }

  void _nextQuestion() {
    _timer?.cancel();
    if (_currentIndex < _questions.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _startTimer();
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) =>
              ResultScreen(questions: _questions, answers: _answers),
        ),
      );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final q = _questions[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${_currentIndex + 1} / ${_questions.length}'),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            QuizTimer(remainingSeconds: _remaining, totalSeconds: 30),
            const SizedBox(height: 18),
            Text(
              q.text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            ...List.generate(q.options.length, (i) {
              final isSelected = _answers[_currentIndex] == i;
              return OptionCard(
                text: q.options[i],
                isSelected: isSelected,
                onTap: () => _choose(i),
              );
            }),
            const Spacer(),
            Row(
              children: [
                if (_currentIndex > 0)
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColors.border),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        _timer?.cancel();
                        setState(() => _currentIndex--);
                        _startTimer();
                      },
                      child: const Text('Back'),
                    ),
                  ),
                if (_currentIndex > 0) const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: _nextQuestion,
                    child: Text(
                      _currentIndex < _questions.length - 1 ? 'Next' : 'Finish',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
