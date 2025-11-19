import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class QuizTimer extends StatelessWidget {
  final int remainingSeconds;
  final int totalSeconds;

  const QuizTimer({super.key, required this.remainingSeconds, this.totalSeconds = 30});

  @override
  Widget build(BuildContext context) {
    final pct = (remainingSeconds / totalSeconds).clamp(0.0, 1.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 8,
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            FractionallySizedBox(
              widthFactor: pct,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Text('Time left: $remainingSeconds s', style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}