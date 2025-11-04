import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:bmi_calculator/widgets/counter_card.dart';
import 'package:flutter/material.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({super.key, required this.bmiInputsModel});
  final BmiInputsModel bmiInputsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CounterCard(
            text: 'WEIGHT',
            defaultValue: 80,
            onChanged: (value) {
              bmiInputsModel.weight = value;
            },
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: CounterCard(
            text: 'AGE',
            defaultValue: 30,
            onChanged: (value) {
              bmiInputsModel.age = value;
            },
          ),
        ),
      ],
    );
  }
}
