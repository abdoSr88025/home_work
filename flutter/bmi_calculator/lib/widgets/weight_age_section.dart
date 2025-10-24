import 'package:bmi_calculator/widgets/counter_card.dart';
import 'package:flutter/material.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CounterCard(text: 'WEIGHT', defaultValue: 80)),
        SizedBox(width: 16),
        Expanded(child: CounterCard(text: 'AGE', defaultValue: 30)),
      ],
    );
  }
}
