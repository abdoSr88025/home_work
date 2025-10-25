import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:bmi_calculator/widgets/gender_item.dart';
import 'package:flutter/material.dart';

class GenderSelectionSection extends StatefulWidget {
  const GenderSelectionSection({super.key, required this.bmiInputsModel});
  final BmiInputsModel bmiInputsModel;
  @override
  State<GenderSelectionSection> createState() => _GenderSelectionSectionState();
}

class _GenderSelectionSectionState extends State<GenderSelectionSection> {
  bool isMaleSelected = true;
  Color activeColor = Color(0xff090B24);
  Color inActiveColor = Color(0xff17172F);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = true;
              widget.bmiInputsModel.gender = 'Male';
              setState(() {});
            },
            child: GenderItem(
              icon: Icons.male,
              data: "Male",
              color: isMaleSelected ? activeColor : inActiveColor,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = false;
              widget.bmiInputsModel.gender = 'Female';
              setState(() {});
            },
            child: GenderItem(
              icon: Icons.female,
              data: "Female",
              color: !isMaleSelected ? activeColor : inActiveColor,
            ),
          ),
        ),
      ],
    );
  }
}
